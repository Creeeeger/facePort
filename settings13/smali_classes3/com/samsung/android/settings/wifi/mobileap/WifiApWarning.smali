.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private final MHS_WIFI_DISCONNECTED_REQUEST:I

.field private final TETHER_HELP_REQUEST:I

.field private allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

.field private autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

.field private autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

.field private autohotspot_security:I

.field private bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field private bleScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private customView:Landroid/view/View;

.field private dataLimitMsg:Landroid/widget/TextView;

.field private extra_type:I

.field private isWifiWarningDoNotShowAgain:Z

.field private isregisterFinishReceiver:Z

.field private mAOSPWifiManager:Landroid/net/wifi/WifiManager;

.field private mBTPairingCloseDialog:Landroid/app/AlertDialog;

.field private mBand:I

.field private mCb:Landroid/widget/CheckBox;

.field private mChangeSecurity:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDataLimitChangeLimitButton:Landroid/widget/Button;

.field private mDataLimitDialog:Landroid/app/AlertDialog;

.field private mDataLimitEditErrorTextView:Landroid/widget/TextView;

.field private mDataLimitEditText:Landroid/widget/EditText;

.field private mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

.field private mDialogTheme:I

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNaiMismatchDialog:Landroid/app/AlertDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mProvisionApp:[Ljava/lang/String;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private final mTetheringProvisionApp:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWifiApWarningRecv:Landroid/content/BroadcastReceiver;

.field private mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mWifiEnableCheck:Z

.field private m_ST_Battery:Ljava/lang/String;

.field private m_ST_D2D_Devicename:Ljava/lang/String;

.field private m_ST_D2D_FamilyID:Ljava/lang/String;

.field private m_ST_D2D_FamilyIDHash:J

.field private m_ST_D2D_WiFiMAC:Ljava/lang/String;

.field private m_ST_SSId:Ljava/lang/String;

.field private mlinkAlertDialog:Landroid/app/AlertDialog;

.field private msendIntentToAutoHotspotD2DFamilyUpdate:Z

.field private nevershowagain:Z

.field private req_type:I

.field private waitingForConfigurationSet:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAOSPWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCb(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimitEditErrorTextView(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataLimitEditText(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogType(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNaiMismatchDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiDisableWarnDoNotShowAgain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_ST_D2D_FamilyID(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_FamilyID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetm_ST_D2D_FamilyIDHash(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_FamilyIDHash:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetm_ST_D2D_WiFiMAC(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_WiFiMAC:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSharedPref(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_ST_D2D_WiFiMAC(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_WiFiMAC:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnevershowagain(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuttonValidate(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->buttonValidate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFirstTimeConfigureAndProceedFurthur(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkFirstTimeConfigureAndProceedFurthur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckFirstTimeWiFiSharingDialogAndProceedFurthur(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkFirstTimeWiFiSharingDialogAndProceedFurthur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIfBleScanResultValid(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkIfBleScanResultValid(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckIfSIMCardPresentAndProceedFurthur(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkIfSIMCardPresentAndProceedFurthur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckLowBatteryAndProceedFurthur(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkLowBatteryAndProceedFurthur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misJdmModel(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isJdmModel()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mputBooleanSharedPreference(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastEnablingHotspotCancel(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendIntentToAutoHotspotD2DFamilyUpdate(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendIntentToAutoHotspotD2DFamilyUpdate(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNextHotspotDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartProvisioningIfNecessary(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 105
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 104
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->msendIntentToAutoHotspotD2DFamilyUpdate:Z

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    .line 169
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 170
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    const/4 v1, 0x0

    .line 184
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 187
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 189
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->waitingForConfigurationSet:Z

    .line 202
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    .line 204
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 215
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->MHS_REQUEST:I

    const/4 v2, 0x2

    .line 216
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->MHS_WIFI_DISCONNECTED_REQUEST:I

    const/4 v2, 0x1

    .line 217
    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->TETHER_HELP_REQUEST:I

    .line 218
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    .line 231
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    .line 232
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBTPairingCloseDialog:Landroid/app/AlertDialog;

    .line 455
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApWarningRecv:Landroid/content/BroadcastReceiver;

    .line 2227
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$80;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$80;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private CheckWiFiConcurrencyAndProceedFurthur()V
    .locals 11

    .line 1556
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const-string v1, "WifiApWarning"

    const-string v2, "CheckWiFiConcurrencyAndProceedFurthur"

    .line 1557
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isDualAPConfiguration()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0xc

    const/4 v6, -0x1

    if-eqz v2, :cond_2

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_2

    .line 1559
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_1
    const/16 v0, 0x36

    .line 1562
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    .line 1563
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWirelessDexEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1564
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_3

    .line 1565
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_3
    const-string v0, "WirelessDex is enabled. Create dailog"

    .line 1567
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x34

    .line 1568
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    .line 1570
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isSmartViewEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1571
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_5

    .line 1572
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_5
    const-string v0, "Smartview is enabled. Create dailog"

    .line 1574
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x22

    .line 1575
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    .line 1576
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNanEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1577
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_7

    .line 1578
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_7
    const-string v0, "WiFi Nan is enabled. Create dailog"

    .line 1580
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x23

    .line 1581
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    :cond_8
    const/16 v2, 0x1f

    const-string v7, "WiFi P2p is connected. Create dailog"

    const/4 v8, 0x0

    if-eq v0, v4, :cond_c

    if-ne v0, v3, :cond_9

    goto :goto_0

    .line 1686
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiP2pConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1687
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_a

    .line 1689
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    .line 1691
    :cond_a
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    :cond_b
    const-string v0, " Wi-Fi is not enabled"

    .line 1693
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    .line 1583
    :cond_c
    :goto_0
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_d

    const-string v0, "Dualband supported model, so dont check for WifiSharing Switch if Autohotspot client in trying to enable in single band"

    .line 1584
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    .line 1587
    :cond_d
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_2

    .line 1634
    :cond_e
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1635
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiP2pConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1636
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_f

    .line 1638
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    .line 1640
    :cond_f
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    .line 1643
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getWifiConnectedFrequency()I

    move-result v0

    if-eq v0, v6, :cond_16

    .line 1645
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getIndoorStatus()I

    move-result v2

    .line 1646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frequency : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v6, :cond_11

    .line 1649
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getWifiConnectedBand(I)I

    move-result v0

    goto :goto_1

    :cond_11
    move v0, v8

    .line 1651
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frequency band of connected AP:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WiFi Sharing lite model. Wifi connected , indoor status:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v3, :cond_13

    .line 1654
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_12

    .line 1655
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_12
    const/16 v0, 0x28

    .line 1657
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    :cond_13
    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 1659
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_14

    .line 1660
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_14
    const/16 v0, 0x29

    .line 1662
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    .line 1664
    :cond_15
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    :cond_16
    const-string v0, "WiFi Sharing lite model. Wifi not connected"

    .line 1667
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    .line 1671
    :cond_17
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "WiFi Sharing  model."

    .line 1672
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiP2pConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1674
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_18

    .line 1676
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    .line 1678
    :cond_18
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_5

    .line 1680
    :cond_19
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_5

    :cond_1a
    const-string p0, "not handling in any case, it is an error"

    .line 1683
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1588
    :cond_1b
    :goto_2
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v9, 0x258

    const/16 v2, 0x1e

    if-eqz v0, :cond_1f

    .line 1589
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v4, "SAMSUNG_HOTSPOT"

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    .line 1590
    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1c

    move v0, v3

    goto :goto_3

    :cond_1c
    move v0, v8

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    if-eqz v0, :cond_1d

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi Sharing not supported/not enabled.create dailog,isWifiWarningDoNotShowAgain:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_saved_state"

    .line 1596
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1597
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1598
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1599
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$70;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$70;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_1d
    if-nez v0, :cond_24

    .line 1607
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_1e

    .line 1608
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    .line 1610
    :cond_1e
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_5

    .line 1612
    :cond_1f
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v3, "TMO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v3, "NEWCO"

    .line 1613
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_4

    :cond_20
    const-string v0, "WiFi Sharing not supported/not enabled. Create dailog"

    .line 1631
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_5

    .line 1614
    :cond_21
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getWifiConnectedFrequency()I

    move-result v0

    if-eq v0, v6, :cond_23

    .line 1616
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v6, :cond_22

    .line 1617
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    .line 1619
    :cond_22
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_5

    .line 1621
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1622
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1623
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    :goto_5
    return-void
.end method

.method private buttonValidate()V
    .locals 5

    .line 2198
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    .line 2199
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 2200
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2201
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    .line 2202
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    cmpg-double v0, v3, v0

    if-gez v0, :cond_0

    .line 2203
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 2205
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 2208
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private canSIMCheckByPassed()Z
    .locals 1

    .line 1423
    sget-boolean p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "vendor.wifiap.simcheck.disable"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canSkipProvisioningForWiFiSharingCase()Z
    .locals 1

    .line 1836
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiApWarning"

    const-string v0, "Wifi is connected so skip provisioning for Wifi Sharing"

    .line 1838
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkFirstTimeConfigureAndProceedFurthur()V
    .locals 4

    .line 1520
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v2, "NEWCO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1521
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUserDefinedPasswordSetForTMO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1522
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1523
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_1
    const/4 v0, 0x0

    const-string v2, "WifiApWarning"

    const-string v3, "Dialog create during first time Mobile HotSpot at TMO"

    .line 1526
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "needresult"

    .line 1528
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1529
    sget v2, Lcom/android/settings/R$string;->wifi_ap_first_time_configuration:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->launchWifiApEditSettingsActivity(I)V

    .line 1530
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->waitingForConfigurationSet:Z

    move v1, v0

    :cond_2
    if-eqz v1, :cond_3

    .line 1534
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CheckWiFiConcurrencyAndProceedFurthur()V

    :cond_3
    return-void
.end method

.method private checkFirstTimeWiFiSharingDialogAndProceedFurthur()V
    .locals 5

    .line 1478
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string v3, "wifi_ap_wifi_sharing"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1482
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 1483
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 1484
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1486
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1487
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1488
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_2
    const/16 v0, 0xe

    .line 1490
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 1492
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkLowBatteryAndProceedFurthur()V

    :goto_0
    return-void
.end method

.method private checkIfBleScanResultValid(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    .locals 3

    .line 2505
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleScanResults:Ljava/util/List;

    const/4 p0, 0x0

    if-nez v0, :cond_0

    const-string p1, "WifiApWarning"

    const-string v0, "Autohotspot checkIfBleScanResultValid null"

    .line 2507
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 2511
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    .line 2512
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object p0
.end method

.method private checkIfSIMCardPresentAndProceedFurthur()V
    .locals 9

    const-string v0, "WifiApWarning"

    const-string v1, "checkIfSIMCardPresentAndProceedFurthur"

    .line 1438
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1441
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-le v2, v3, :cond_0

    .line 1442
    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 1443
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 1444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simState1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",simState2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",telephonyManager.getPhoneCount():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v6, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    if-ne v3, v6, :cond_2

    goto :goto_0

    .line 1453
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 1454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v6, :cond_1

    if-ne v1, v4, :cond_2

    :cond_1
    :goto_0
    move v5, v6

    .line 1462
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->canSIMCheckByPassed()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v5, :cond_3

    const/16 v0, 0x19

    .line 1464
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_1

    .line 1466
    :cond_3
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkVZWRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1467
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1468
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_4
    const/16 v0, 0x1a

    .line 1470
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_1

    .line 1472
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkFirstTimeWiFiSharingDialogAndProceedFurthur()V

    :goto_1
    return-void
.end method

.method private checkLowBatteryAndProceedFurthur()V
    .locals 2

    .line 1497
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    .line 1498
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_0
    const/16 v0, 0x1c

    .line 1502
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    .line 1504
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkFirstTimeConfigureAndProceedFurthur()V

    :goto_0
    return-void
.end method

.method private checkProvisioningAfterWifiDisconnected(I)V
    .locals 4

    .line 1891
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isOperatorRequiresProvisioning()Z

    move-result v0

    const-string v1, "WifiApWarning"

    if-eqz v0, :cond_1

    .line 1892
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkifProvisioningAPKPresent()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "checkProvisioningAfterWifiDisconnected"

    .line 1893
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1895
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TETHER_TYPE"

    .line 1896
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x800000

    .line 1897
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 1898
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/AlertActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "provisioning APK is not present"

    .line 1900
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1902
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_0

    :cond_1
    const-string p1, "provisioning is not required, keep same state"

    .line 1905
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :goto_0
    return-void
.end method

.method private checkVZWRoaming()Z
    .locals 1

    .line 1427
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1428
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1429
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string v0, "us"

    .line 1430
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "WifiApWarning"

    const-string v0, "In VZW roaming"

    .line 1431
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkifProvisioningAPKPresent()Z
    .locals 3

    .line 1826
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1827
    aget-object v0, v0, v1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package mprov : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disabled."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WifiApWarning"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->noApplications:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1830
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private collapsePanels()V
    .locals 1

    .line 493
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    .line 494
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method private disableGaurd()V
    .locals 1

    .line 2488
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x680080

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private enableGaurd()V
    .locals 1

    .line 2494
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x680080

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private enableTethering(Z)V
    .locals 9

    .line 1728
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v0

    if-eqz p1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 1731
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1734
    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v2, "LGT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1735
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_warn_toast_lgt:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1737
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTethering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mBand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiApWarning"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    if-eq v1, v4, :cond_3

    goto :goto_0

    .line 1779
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto/16 :goto_4

    .line 1739
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 1740
    new-instance v5, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v5, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 1741
    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v7, 0x2

    if-eq v6, v4, :cond_9

    .line 1742
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v4

    .line 1743
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mBand : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mChannel:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_5

    .line 1745
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$72;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$72;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_5
    and-int/2addr v2, v7

    if-eqz v2, :cond_6

    .line 1750
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$73;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$73;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_6
    if-lez v4, :cond_8

    const/16 v2, 0xb

    if-le v4, v2, :cond_7

    goto :goto_1

    .line 1760
    :cond_7
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$75;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$75;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v5, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    .line 1756
    :cond_8
    :goto_1
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$74;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$74;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1766
    :cond_9
    :goto_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    if-eqz v2, :cond_c

    .line 1767
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    if-nez v2, :cond_a

    .line 1768
    invoke-virtual {v5, v3, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    :cond_a
    const/4 v0, 0x1

    if-lt v2, v0, :cond_b

    const/4 v0, 0x3

    if-gt v2, v0, :cond_b

    .line 1771
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    invoke-virtual {v5, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    .line 1773
    :cond_b
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1776
    :cond_c
    :goto_3
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 1777
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :goto_4
    return-void
.end method

.method private getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string p0, "MHSNoProvisionPreferences"

    const/4 v0, 0x0

    .line 2336
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2337
    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 2338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBooleanFromSharedPreference - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiApWarning"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getTimeStamp()Ljava/lang/String;
    .locals 2

    .line 2118
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getWifiConnectedBand(I)I
    .locals 0

    const/16 p0, 0x96c

    if-lt p1, p0, :cond_0

    const/16 p0, 0x9b4

    if-gt p1, p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method private getWifiConnectedFrequency()I
    .locals 2

    .line 1699
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    .line 1700
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wifi Frequency is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApWarning"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private isDualAPConfiguration()Z
    .locals 2

    .line 1552
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isJdmModel()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isMetroPCS()Z
    .locals 2

    .line 2358
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "NEWCO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOperatorRequiresProvisioning()Z
    .locals 4

    .line 1812
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    const-string v1, "WifiApWarning"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "vendor.wifiap.provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Skip isProvisioningCheck"

    .line 1813
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1817
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " provisioning app is not set in CSCfeature, operator:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1821
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    .line 1822
    array-length p0, v0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string p0, "WifiApWarning"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1790
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 1791
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1793
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 1797
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageExists | package is enabled ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    goto :goto_1

    :cond_2
    const-string p1, "isPackageExists | package is not system app or not available"

    .line 1801
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    .line 1805
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method private isSmartViewEnabled()Z
    .locals 4

    .line 2029
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2030
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    .line 2031
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiP2pConnected(Landroid/content/Context;)Z

    move-result p0

    .line 2032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmartViewEnabled:p2pstatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiApWarning"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 2033
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 2034
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string p0, "isSmartViewEnabled:true"

    .line 2035
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "isSmartViewEnabled:false"

    .line 2038
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isUserDefinedPasswordSetForTMO()Z
    .locals 2

    .line 1509
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    .line 1511
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isWifiConnected()Z
    .locals 2

    .line 1716
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1717
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1720
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 1724
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method private isWifiSharingEnabled()Z
    .locals 2

    .line 2136
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isWirelessDexEnabled()Z
    .locals 3

    .line 2017
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 2018
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    const-string v0, "WifiApWarning"

    if-eqz p0, :cond_0

    .line 2019
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2020
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result p0

    if-ne p0, v2, :cond_0

    const-string p0, "isWirelessDexEnabled:true"

    .line 2021
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "isWirelessDexEnabled:false"

    .line 2024
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private launchWifiApEditSettingsActivity(I)V
    .locals 3

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launching WifiApEditSettings activity with title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApWarning"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiApEditSettingsActivity"

    .line 1541
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    .line 1542
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "activity_title"

    .line 1543
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string p0, "MHSNoProvisionPreferences"

    const/4 v0, 0x0

    .line 2343
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2344
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2345
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2346
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2347
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "putSharedPreference - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiApWarning"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerFinishReceiver()V
    .locals 3

    const-string v0, "WifiApWarning"

    const-string v1, "registerFinishReceiver"

    .line 464
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 465
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isregisterFinishReceiver:Z

    .line 466
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApWarningRecv:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .locals 3

    .line 2011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "called_dialog"

    const/4 v2, 0x2

    .line 2012
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2013
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendIntentToAutoHotspotD2DFamilyUpdate(Z)V
    .locals 2

    .line 2364
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->msendIntentToAutoHotspotD2DFamilyUpdate:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2365
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->msendIntentToAutoHotspotD2DFamilyUpdate:Z

    .line 2366
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2367
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 2368
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 2370
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableGaurd()V

    .line 2371
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2372
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2373
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2374
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.AcceptPopUp"

    .line 2375
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accepted"

    .line 2376
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2377
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private showDatalimitReachedpopup(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;I)V
    .locals 3

    .line 2140
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2142
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 2144
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x1030128

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 2146
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2147
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$layout;->sec_wifi_ap_set_data_limit_dialog1:I

    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2148
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2150
    sget p3, Lcom/android/settings/R$id;->data_limit_message_textview:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dataLimitMsg:Landroid/widget/TextView;

    .line 2151
    sget v1, Lcom/android/settings/R$string;->wifi_ap_you_have_already_used_hotspot_data_today:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2152
    sget p3, Lcom/android/settings/R$id;->data_limit_edittext:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    .line 2153
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2154
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    double-to-int p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2155
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->selectAll()V

    .line 2156
    sget p2, Lcom/android/settings/R$id;->data_limit_edit_error_textview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    .line 2157
    sget p1, Lcom/android/settings/R$string;->wifi_ap_data_limit_reached:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2158
    sget p1, Lcom/android/settings/R$string;->wifi_ap_change_limit:I

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$76;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2173
    sget p1, Lcom/android/settings/R$string;->data_limit_cancel:I

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$77;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$77;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2179
    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$78;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$78;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2185
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$79;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$79;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitDialog:Landroid/app/AlertDialog;

    .line 2192
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 2193
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitDialog:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    .line 2194
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->buttonValidate()V

    return-void
.end method

.method private showFirstTimePoup(Landroid/content/Context;)V
    .locals 5

    .line 2253
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2255
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 2257
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x1030128

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 2259
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2260
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$layout;->sec_wifi_ap_tmo_first_time_popup:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2261
    sget v1, Lcom/android/settings/R$id;->wifi_ap_do_not_show:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2262
    sget v2, Lcom/android/settings/R$id;->wifi_ap_do_not_show_again:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;

    .line 2263
    sget v2, Lcom/android/settings/R$id;->wifi_ap_tmo_first_time_popup:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2264
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->first_use_wifi_msg:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2265
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2276
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2278
    sget p1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$82;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2314
    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$83;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$83;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2322
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$84;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$84;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2330
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->first_use_title:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2331
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 2332
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMetorPCSHelpPoup(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 12

    .line 2381
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/TetheringManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 2382
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 2383
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 2384
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 2390
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/16 v4, 0x5f

    const-string v5, "%z"

    const-string v6, "%y"

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    .line 2392
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "html/%y%z/tethering_help.html"

    invoke-virtual {v9, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 2393
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v7

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2398
    :try_start_0
    invoke-virtual {v3, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2404
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 2408
    throw p0

    :catch_0
    move v9, v10

    :catch_1
    :cond_1
    :goto_1
    const-string v3, ""

    if-eqz v2, :cond_3

    .line 2410
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v11, "html/%y%z/tethering_%xhelp.html"

    invoke-virtual {v11, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_2

    .line 2411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v6, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v7

    :goto_3
    if-eqz v2, :cond_9

    .line 2414
    array-length v4, v1

    const-string v5, "%x"

    if-eqz v4, :cond_5

    array-length v4, v0

    if-nez v4, :cond_5

    .line 2415
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "usb_mtr_"

    .line 2416
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    const-string v0, "usb_tmo_"

    .line 2418
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 2420
    :cond_5
    array-length v4, v0

    if-eqz v4, :cond_6

    array-length v4, v1

    if-nez v4, :cond_6

    const-string v0, "wifi_"

    .line 2421
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 2422
    :cond_6
    array-length v1, v1

    if-eqz v1, :cond_8

    array-length v0, v0

    if-eqz v0, :cond_8

    .line 2423
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "usb_wifi_mtr_"

    .line 2424
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    const-string v0, "usb_wifi_tmo_"

    .line 2426
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 2429
    :cond_8
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2432
    :cond_9
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tethering Help url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApWarning"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2437
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 2439
    :goto_5
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    .line 2440
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v10, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2442
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2450
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    const-string v0, "layout_inflater"

    .line 2456
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2458
    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_dialog_first_time_tether:I

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2459
    sget v2, Lcom/android/settings/R$id;->dns_check_box:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/16 v3, 0x8

    .line 2460
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2462
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2463
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2464
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2465
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_b

    .line 2467
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->subtitle_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_b
    const/4 v3, 0x5

    if-ne v1, v3, :cond_c

    .line 2469
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->wifi_ap_dialog_body_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2471
    :cond_c
    :goto_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget p1, Lcom/android/settings/R$string;->help_label:I

    .line 2472
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2473
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$86;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$86;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 2474
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$85;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$85;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 2480
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 2485
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0

    :catch_3
    move-exception p0

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_4
    move-exception p0

    move-object v0, v7

    .line 2445
    :goto_7
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error IOException "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_d

    .line 2450
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_d
    return-object v7

    :catchall_2
    move-exception p0

    move-object v7, v0

    :goto_8
    if-eqz v7, :cond_e

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 2454
    :catch_6
    :cond_e
    throw p0
.end method

.method private showNextHotspotDialog(I)V
    .locals 13

    .line 502
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    const/4 v3, 0x4

    .line 504
    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    .line 506
    iput v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    .line 508
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dialogtheme: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiApWarning"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x7

    const/4 v5, 0x0

    if-eq p1, v3, :cond_14

    const/16 v3, 0x1c

    if-eq p1, v3, :cond_13

    const/16 v3, 0x22

    if-eq p1, v3, :cond_12

    const/16 v3, 0x23

    if-eq p1, v3, :cond_11

    const/16 v3, 0x33

    if-eq p1, v3, :cond_10

    const/16 v3, 0x34

    if-eq p1, v3, :cond_f

    packed-switch p1, :pswitch_data_0

    const-string v3, "VZW"

    const v7, 0x102000b

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const/16 v8, 0x21

    const-string v1, "\n"

    const-string v3, ""

    packed-switch p1, :pswitch_data_4

    .line 1418
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto/16 :goto_a

    .line 859
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {p0, p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showDatalimitReachedpopup(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;I)V

    .line 860
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 1026
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1027
    sget v2, Lcom/android/settings/R$string;->wifi_ap_dun_fail_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1029
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_dun_fail_msg1:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_dun_fail_msg2:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1031
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1032
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$43;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$43;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1037
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$44;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$44;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1042
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1043
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_a

    .line 1046
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mhs_wifi_network_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, " "

    .line 1050
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1051
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1052
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_wifi_profile_share_network_available_msg_tablet:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1054
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_wifi_profile_share_network_available_msg_phone:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1056
    :goto_2
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_connect:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1062
    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$46;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$46;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1068
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1074
    sget v0, Lcom/android/settings/R$string;->wifi_ap_wifi_profile_share_network_available_title:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1075
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1076
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_a

    :pswitch_3
    const-string v0, "DIALOG_WARN_AUTO_HOTSPOT_CONNECTION_FIRST_TIME 2"

    .line 1201
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_connection_settings_link_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_connection_dialog_body:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1206
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1207
    sget v2, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_connection_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1208
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1209
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1211
    sget v2, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1217
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    .line 1224
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1225
    new-instance v11, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1226
    new-instance v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/AlertDialog;ZZZ)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    invoke-virtual {v11, v12, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1227
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1229
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    :pswitch_4
    const-string v0, "DIALOG_WARN_AUTO_HOTSPOT_DISCONNECTED 2"

    .line 1165
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_text_tablet:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_text_phone:I

    :goto_3
    invoke-static {v0}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v0

    .line 1167
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1168
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_connection_settings_link_text:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 1169
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1172
    sget v5, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_disconnected_dialog_title:I

    invoke-static {v5}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1173
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1174
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1176
    sget v3, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$51;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$51;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1182
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$52;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$52;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1188
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    .line 1189
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1191
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "%s"

    .line 1192
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1193
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1194
    new-instance v11, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/AlertDialog;ZZZ)V

    add-int/2addr v10, v9

    invoke-virtual {v6, v11, v9, v10, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1195
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1197
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    :pswitch_5
    const-string v0, "DIALOG_WARN_ALLOW_AUTOHOTSPOT_DISCOVERY 2"

    .line 1079
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "wifiap_adv_autohotspot_ssid"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "wifiap_adv_autohotspot_mac"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1082
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v9, "sem_wifi"

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 1083
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/android/settings/R$string;->wifi_ap_advanced_hotspot_popup_message:I

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v0, v10, v2

    invoke-virtual {v5, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1084
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v11, Lcom/android/settings/R$string;->wifi_ap_auto_hotspot_connection_settings_link_text:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1086
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget v12, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v5, p0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1087
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1088
    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_connect:I

    new-instance v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    invoke-direct {v12, p0, v4, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1122
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v3, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1123
    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$49;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$49;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1133
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1143
    sget v0, Lcom/android/settings/R$string;->wifi_ap_advanced_hotspot_popup_title:I

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1144
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    .line 1145
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1147
    new-instance v9, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1148
    new-instance v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/AlertDialog;ZZZ)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    invoke-virtual {v9, v12, v0, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1151
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    :pswitch_6
    const-string v0, "CASE DIALOG_WARN_DUALAP_WIFI_DISABLE"

    .line 863
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 865
    sget v1, Lcom/android/settings/R$string;->wifi_ap_dualap_wifi_off_warn:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->positive_button_off:I

    .line 866
    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$35;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$35;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 880
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$34;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$34;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 886
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_title:I

    .line 891
    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 894
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 700
    :pswitch_7
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->msendIntentToAutoHotspotD2DFamilyUpdate:Z

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIALOG_D2D_FAMILYID_ACCEPT create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_Devicename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",hash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_FamilyIDHash:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",m_ST_D2D_WiFiMAC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_WiFiMAC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "power"

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    .line 703
    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 704
    invoke-virtual {v0, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const/16 v1, 0xa

    .line 705
    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "keyguard"

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 707
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 708
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 709
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 710
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 711
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->disableGaurd()V

    .line 713
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 715
    sget v1, Lcom/android/settings/R$string;->wifi_ap_d2d_new_family_group_join:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 716
    sget v1, Lcom/android/settings/R$string;->wifi_ap_family_accept_dialog_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 751
    sget v1, Lcom/android/settings/R$string;->smart_tethering_dialog_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 757
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 763
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$26;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$26;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    sget v1, Lcom/android/settings/R$string;->wifi_ap_d2d_update_family:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 774
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 775
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 776
    new-instance v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;JJ)V

    .line 784
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 785
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 665
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIALOG_WARN_LOW_BATTERY_ST create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_SSId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 667
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->smart_tethering_connected_ap_summary:I

    invoke-static {v1, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_SSId:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 668
    sget v1, Lcom/android/settings/R$string;->smart_tethering_low_battery_dialog_disconnect_device:I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 682
    sget v1, Lcom/android/settings/R$string;->smart_tethering_dialog_cancel:I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$21;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$21;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$22;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$22;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 694
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->smart_tethering_connected_ap_title:I

    invoke-static {v1, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_SSId:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 696
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 697
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 1397
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1398
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_24ghz_client_mhs_on_text:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1399
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$68;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$68;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1405
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$69;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$69;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1412
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_mobile_hotspot_not_available:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1413
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1414
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1415
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 1362
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_6

    .line 1363
    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 1366
    :cond_6
    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1367
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_indoor_text:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1368
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$65;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$65;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1376
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$66;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$66;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1384
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$67;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$67;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1390
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_indoor_disconnect_text:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1391
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1392
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1393
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 1232
    :pswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1233
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_p2p_off_warn:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1234
    sget v1, Lcom/android/settings/R$string;->turn_on_button:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1240
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$56;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$56;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1247
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1253
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_p2p_off_warn_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1255
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1256
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    :pswitch_d
    if-nez v1, :cond_7

    .line 932
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    goto :goto_4

    .line 934
    :cond_7
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x1030128

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 936
    :goto_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Setting the DB val :settings.Secure.WIFI_AP_DUAL_POPUP to 1"

    .line 938
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_dual_popup"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 941
    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 942
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_wifi_disable_warning_dialog:I

    invoke-static {v1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    .line 943
    sget v2, Lcom/android/settings/R$id;->wifi_ap_wifi_disable_warning_do_not_show:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    .line 944
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_warning_disable_do_not_show_again:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    .line 945
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->wifi_ap_disable_warning_dialog_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 947
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v2, :cond_8

    .line 948
    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_beyond_vzw:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 950
    :cond_8
    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_vzw:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 952
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    .line 954
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 956
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->positive_button_off:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 989
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 996
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$42;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$42;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1002
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_off_warn_title:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1003
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1004
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1005
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 599
    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 600
    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 601
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_msg_beyond_vzw:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 602
    sget v1, Lcom/android/settings/R$string;->lockpattern_continue_button_text:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 607
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 619
    sget v1, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_title_beyond_vzw:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    .line 621
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_msg:I

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "$20.48"

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 622
    sget v1, Lcom/android/settings/R$string;->lockpattern_continue_button_text:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$15;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 633
    sget v1, Lcom/android/settings/R$string;->wifi_ap_warn_roaming_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 635
    :goto_7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 636
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 637
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    :pswitch_f
    const-string v0, "no sim"

    .line 573
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 575
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 576
    sget v1, Lcom/android/settings/R$string;->mobile_hotspot_dialog_nouim_or_nosim_warning:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 578
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 580
    :goto_8
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 587
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 593
    sget v1, Lcom/android/settings/R$string;->wifi_tether_dialog_nosim_warning_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 595
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 596
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 553
    :pswitch_10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 554
    sget v1, Lcom/android/settings/R$string;->wifi_tether_dialog_nolte_warning:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 555
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->mobileap:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 568
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 569
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 570
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 518
    :pswitch_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 519
    sget v1, Lcom/android/settings/R$string;->wifi_ap_dialog_disclaimer:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogtheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dialogID : DIALOG_HOTSPOT_WARNING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNextHotspotDialog: isTablet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "islightTheme : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget v1, Lcom/android/settings/R$string;->bluetooth_accept:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 543
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mlinkAlertDialog:Landroid/app/AlertDialog;

    .line 544
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 545
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mlinkAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 546
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 547
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    .line 549
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 511
    :pswitch_12
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 1019
    :pswitch_13
    invoke-direct {p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showMetorPCSHelpPoup(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1021
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1022
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 1008
    :pswitch_14
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v1, "dontshowmemhsfirsttime"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 1009
    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1010
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1011
    invoke-direct {p0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V

    .line 1012
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 1014
    :cond_d
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto/16 :goto_a

    :pswitch_15
    const-string v0, "DIALOG_WIFI_SHARING_FIRST_TIME"

    .line 1301
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1303
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1305
    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1306
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_text_att:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 1308
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_text:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1310
    :goto_9
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->wifi_sharing_first_time_dialog_title:I

    .line 1311
    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1312
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$61;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$61;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 1313
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$60;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$60;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 1318
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1323
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1324
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1325
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    :cond_f
    const-string v0, "CASE DIALOG_WARN_WIRELESS_DEX_DISABLE"

    .line 897
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 899
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wirelessdex_off_warn:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_disconnect_text:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$38;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 914
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$37;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$37;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 920
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wirelessdex_off_warn_title:I

    .line 925
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 927
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 928
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 1329
    :cond_10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1330
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_turn_off:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1331
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_ap_wifi_sharinglite_24ghz_client_during_conn_text:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1332
    sget v1, Lcom/android/settings/R$string;->turn_off:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$62;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$62;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1345
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$63;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$63;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1351
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$64;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$64;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1357
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1358
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 832
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 833
    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_nan_off_warn:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_button_stop:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 834
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$32;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$32;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 840
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$31;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$31;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 847
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_nan_off_warn_title:I

    .line 853
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 856
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 788
    :cond_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 789
    sget v1, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->turn_off_button:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$30;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$30;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 790
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$29;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$29;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 813
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 820
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_smartview_off_warn_title:I

    .line 826
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 829
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    .line 640
    :cond_13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 641
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->dialog_battery_data_warning:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 642
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$17;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$17;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 647
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$18;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$18;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 653
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$19;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$19;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 659
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->mobileap:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 660
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 661
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 662
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_a

    :cond_14
    const-string v0, "DIALOG_WIFI_DISCONNECTED_HOTSPOT_USAGE_WARNING"

    .line 1259
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_15

    .line 1261
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1263
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifi_disconnect_do_not_show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for VZW show Wi-fiDisconnect isDoNotShowAgain "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v6, :cond_16

    .line 1266
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_wifi_disconnected_toast:I

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    .line 1267
    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1268
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1269
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    .line 1272
    :cond_16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1273
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_ap_wifi_sharing_vzw_hotspot_usage_dialog:I

    invoke-static {v1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1274
    sget v2, Lcom/android/settings/R$id;->wifi_ap_wifi_disconnect_warning_do_not_show:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1275
    sget v3, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_wifi_disconnected_dialog_title:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1276
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1277
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$58;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1291
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$59;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$59;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1298
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    :cond_17
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_d
        :pswitch_c
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x36
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 6

    .line 1846
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "WifiApWarning"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isActiveNetworkisCellular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 1847
    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->isDataLimitReached(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "isMobileDataUsageSupported data reached message"

    .line 1848
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1850
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    .line 1852
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v0, "showhotspotdialoglimit"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isMobileDataUsageSupported dialog already shown skip"

    .line 1853
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    .line 1855
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x3c

    .line 1857
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "startProvisioningIfNecessary"

    .line 1861
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isOperatorRequiresProvisioning()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 1863
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkifProvisioningAPKPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1864
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->canSkipProvisioningForWiFiSharingCase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1865
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1866
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_2

    .line 1868
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    .line 1869
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1870
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v5, v4, v3

    aget-object v2, v4, v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "TETHER_TYPE"

    .line 1871
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x800000

    .line 1872
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "WifiApWarning launching provisioning"

    .line 1873
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/app/AlertActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_4
    const-string p1, "provisioning APK is not present"

    .line 1878
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_2

    .line 1881
    :cond_5
    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v0, "TMO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v0, "NEWCO"

    .line 1882
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 1885
    :cond_6
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1886
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_2

    :cond_7
    :goto_1
    const/16 p1, 0xf

    .line 1883
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_2
    return-void
.end method

.method private unregisterFinishReceiver()V
    .locals 2

    .line 470
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isregisterFinishReceiver:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiApWarning"

    const-string v1, "unregisterFinishReceiver"

    .line 473
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 474
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isregisterFinishReceiver:Z

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApWarningRecv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public getDataLimitEditTextValue()Ljava/lang/String;
    .locals 1

    .line 2220
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2221
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 5

    .line 2214
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getDataLimitEditTextValue()Ljava/lang/String;

    move-result-object p0

    .line 2215
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 1911
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1912
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult requestCode"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "resultCode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WifiApWarning"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-ne p3, p1, :cond_0

    .line 1914
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1915
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_0
    const-wide/16 v1, 0x258

    const/16 v3, 0xc

    const/16 v4, 0xd

    const/4 v5, -0x1

    const-string v6, "wifi_saved_state"

    const/4 v7, 0x0

    if-nez p1, :cond_9

    if-ne p2, v5, :cond_1

    .line 1919
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    .line 1920
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1921
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_1
    const-string p1, "provision failed"

    .line 1923
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1926
    sget-boolean p2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiConnected()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "Wifi Sharing Provision failed but wifi connected"

    .line 1927
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1929
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    .line 1932
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isBixbyMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1933
    invoke-static {v7}, Lcom/android/settings/Utils;->setBixbyMode(Z)V

    .line 1936
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p2

    if-eq p2, v3, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 1937
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p2

    if-ne p2, v4, :cond_5

    :cond_4
    const-string p2, "WifiAp is disabled: provisioning fail"

    .line 1938
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v7}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    if-ne p1, p3, :cond_5

    .line 1942
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1944
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1945
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1949
    :cond_5
    :goto_0
    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq p2, v5, :cond_6

    .line 1950
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_6
    if-ne p1, p3, :cond_7

    .line 1953
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1954
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1957
    :cond_7
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_8

    .line 1958
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 1960
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_9
    const/4 v8, 0x2

    if-ne p1, v8, :cond_11

    const-string p1, "VZW"

    if-ne p2, v5, :cond_b

    const-string p2, "privision success, wifi disconnected ,restart provision case"

    .line 1964
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    .line 1966
    sget-object p2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x7

    .line 1967
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    .line 1969
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    .line 1972
    :cond_b
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2, v7}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    .line 1973
    sget-object p2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1974
    sget-boolean p1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_ap_smart_tethering_settings"

    invoke-static {p1, p2, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_c

    goto :goto_1

    :cond_c
    const-string p1, "for VZW show Wi-fiDisconnect ,dont disabling  wifi sharing as Autohotspot case"

    .line 1982
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_d
    :goto_1
    const-string p1, "for VZW show Wi-fiDisconnect ,disabling  wifi sharing"

    .line 1975
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->wifi_ap_wifi_sharing_wifi_disconnected_mobileap_turnoff_toast:I

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    .line 1977
    invoke-virtual {p1, p2, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 1978
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1979
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_ap_wifi_sharing"

    invoke-static {p1, p2, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    .line 1980
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-eq p1, v4, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 1986
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-ne p1, v3, :cond_10

    :cond_f
    const-string p1, "Disabling MHS as Provisioning failed in wifi disconneted case"

    .line 1987
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    .line 1989
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p3, :cond_10

    .line 1993
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 1995
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 1996
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    const-string p1, " provisioning failed, enabling Wifi "

    .line 1998
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2000
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2004
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_11
    :goto_4
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 480
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->wifi_ap_warning_disable_do_not_show_again:I

    if-ne p1, v0, :cond_0

    .line 481
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCheckedChanged mWifiEnableCheck ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiApWarning"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2067
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "WifiApWarning"

    const-string v1, "onCreate"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 253
    invoke-static {v2}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    .line 254
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    .line 255
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v3, "sem_wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 256
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 257
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 258
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 259
    sget v2, Lcom/android/settings/R$style;->SettingsTheme:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 261
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    .line 262
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v2, "wifiap_warning_dialog_type"

    .line 270
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const-string v2, "req_type"

    const/4 v4, -0x1

    .line 271
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const-string v2, "extra_type"

    .line 272
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const-string v2, "wifiap_band"

    .line 273
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const-string v2, "wifiap_security"

    .line 274
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    const-string v2, "wifiap_set_security"

    .line 275
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate req_type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",extra_type:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mDialogType:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mChangeSecurity:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",mBand:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",autohotspot_security:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getTimeStamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "wifi_ap_wifiapwarning_enabled_history"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    if-eqz p1, :cond_2

    const-string v2, "wifi_enablewarning_check_mode"

    .line 282
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->registerFinishReceiver()V

    .line 285
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApWarningActivityRunning(I)V

    .line 287
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v2, :cond_13

    if-eq p1, v5, :cond_14

    if-eq p1, v4, :cond_15

    const/4 v2, 0x5

    const/16 v4, 0xd

    const/16 v5, 0xc

    if-eq p1, v2, :cond_c

    const/4 v2, 0x6

    if-eq p1, v2, :cond_b

    const/4 v2, 0x7

    if-eq p1, v2, :cond_a

    const/16 v2, 0x2a

    if-eq p1, v2, :cond_9

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_7

    const/16 v1, 0x33

    if-eq p1, v1, :cond_6

    const/16 v1, 0x35

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_0
    const-string p1, "DIALOG_CELLULAR_DUN_FAILED 1"

    .line 420
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x3b

    .line 422
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :pswitch_1
    const-string p1, "DIALOG_CLIENT_ACCEPT_WIFI_PROFILE_SHARING 1"

    .line 415
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x3a

    .line 417
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "DIALOG_WARN_AUTO_HOTSPOT_CONNECTION_FIRST_TIME 1"

    .line 410
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x39

    .line 412
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :pswitch_3
    const-string p1, "DIALOG_WARN_AUTO_HOTSPOT_DISCONNECTED 1"

    .line 405
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x38

    .line 407
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :pswitch_4
    const-string p1, "DIALOG_WARN_ALLOW_AUTOHOTSPOT_DISCOVERY 1"

    .line 400
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x37

    .line 402
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    .line 355
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 356
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-eq p1, v5, :cond_5

    if-ne p1, v4, :cond_4

    goto :goto_0

    .line 362
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_5
    :goto_0
    const-string p1, "wifi disconnected check for provisioning if required"

    .line 359
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkProvisioningAfterWifiDisconnected(I)V

    goto/16 :goto_4

    .line 426
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 427
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :cond_7
    const-string p1, "mD2DDeviceName"

    .line 438
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_Devicename:Ljava/lang/String;

    const-string p1, "mD2DFamilyID"

    .line 439
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_FamilyID:Ljava/lang/String;

    const-wide/16 v3, -0x1

    const-string p1, "mD2DHashFamily"

    .line 440
    invoke-virtual {v1, p1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_FamilyIDHash:J

    const-string p1, "mD2DDeviceWiFiMAC"

    .line 441
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_WiFiMAC:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_WiFiMAC:Ljava/lang/String;

    .line 445
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 446
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :cond_9
    const-string p1, "st_ssid_name"

    .line 432
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_SSId:Ljava/lang/String;

    const-string p1, "battery_info"

    .line 433
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_Battery:Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 435
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    .line 394
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 395
    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v0, "VZW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 396
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    .line 390
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 391
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_4

    .line 366
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p1, :cond_11

    .line 367
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-eq p1, v5, :cond_10

    const/16 v1, 0xa

    if-ne p1, v1, :cond_d

    goto :goto_1

    :cond_d
    if-ne p1, v4, :cond_e

    const-string p1, " Enabled, trun off "

    .line 374
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto/16 :goto_4

    :cond_e
    const/16 v1, 0xb

    if-eq p1, v1, :cond_f

    const/16 v1, 0xe

    if-ne p1, v1, :cond_11

    :cond_f
    const-string p1, " Disabled, try to turn on"

    .line 379
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_10
    :goto_1
    const-string p1, " Enabling/disabling, do nothing "

    .line 370
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto/16 :goto_4

    .line 382
    :cond_11
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 383
    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v0, "USC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/16 p1, 0x17

    .line 384
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_4

    .line 386
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkIfSIMCardPresentAndProceedFurthur()V

    goto :goto_4

    :cond_13
    const-string p1, "DIALOG_HOTSPOT_NO_DATA"

    .line 289
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string p1, "DIALOG_NAI_MISMATCH"

    .line 292
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string p1, "DIALOG_TETHERING_DENIED"

    .line 295
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 298
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    sget v0, Lcom/android/settings/R$string;->wifi_mobileAP_modemnai_missmath_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 300
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v0, v2, :cond_16

    .line 301
    sget v0, Lcom/android/settings/R$string;->wifi_mobileAP_no_data_message:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_16
    if-ne v0, v5, :cond_17

    .line 303
    sget v0, Lcom/android/settings/R$string;->wifi_mobileAP_modemnai_missmath_message_3g:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 305
    :cond_17
    sget v0, Lcom/android/settings/R$string;->wifi_mobileAP_modemnai_missmath_message_lte:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 311
    :goto_3
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v0, v2, :cond_18

    if-eq v0, v4, :cond_18

    .line 312
    sget v0, Lcom/android/settings/R$string;->dlg_cancel:I

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_18
    const v0, 0x104000a

    .line 321
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 343
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    .line 352
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_19
    :goto_4
    return-void

    :cond_1a
    :goto_5
    const-string p1, "Error: this activity may be started only with intent"

    .line 265
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .line 2123
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->unregisterFinishReceiver()V

    .line 2124
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApWarningActivityRunning(I)V

    .line 2125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_ap_wifiapwarning_destroyed_history"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2129
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2130
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    const-string v0, "WifiApWarning"

    const-string v1, "onDestroy()"

    .line 2131
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "WifiApWarning"

    const-string v1, "onPause()"

    .line 2079
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApWarningActivityRunning(I)V

    .line 2081
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string v2, "power"

    .line 2082
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2083
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "onPause() sleep"

    .line 2084
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2087
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    .line 2088
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2091
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2092
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    .line 2093
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 2095
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2096
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2097
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    .line 2098
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 2102
    :cond_2
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 2045
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string v0, "WifiApWarning"

    const-string v1, "onResume()"

    .line 2046
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApWarningActivityRunning(I)V

    .line 2048
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->waitingForConfigurationSet:Z

    if-eqz v1, :cond_1

    const-string v1, "waitingForConfigurationSet()"

    .line 2049
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2050
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->waitingForConfigurationSet:Z

    const-wide/16 v0, 0x12c

    .line 2052
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2054
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2055
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2057
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUserDefinedPasswordSetForTMO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_1

    .line 2060
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CheckWiFiConcurrencyAndProceedFurthur()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 488
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 2107
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    const-string p0, "WifiApWarning"

    const-string v0, "onStart()"

    .line 2108
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 2113
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    const-string p0, "WifiApWarning"

    const-string v0, "onStop()"

    .line 2114
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .line 2073
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    return-void
.end method
