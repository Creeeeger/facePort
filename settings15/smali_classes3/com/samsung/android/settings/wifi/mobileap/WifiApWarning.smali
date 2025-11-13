.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final DBG:Z


# instance fields
.field public allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

.field public autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

.field public autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

.field public autohotspot_security:I

.field public bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field public extra_type:I

.field public isIntentFilterBRRegistered:Z

.field public isProvisionBRRegistered:Z

.field public isregisterFinishReceiver:Z

.field public mAOSPWifiManager:Landroid/net/wifi/WifiManager;

.field public mBand:I

.field public mChangeSecurity:Z

.field public mContext:Landroid/content/Context;

.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public mDataLimitChangeLimitButton:Landroid/widget/Button;

.field public mDataLimitDialog:Landroid/app/AlertDialog;

.field public mDataLimitEditErrorTextView:Landroid/widget/TextView;

.field public mDataLimitEditText:Landroid/widget/EditText;

.field public final mDataLimitEditTextWatcher:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;

.field public mDialogTheme:I

.field public mDialogType:I

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public final mIntentReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

.field public mNaiMismatchDialog:Landroid/app/AlertDialog;

.field public mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mProvisionApp:[Ljava/lang/String;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$69;

.field public mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mSharedPref:Landroid/content/SharedPreferences;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWifiApWarningRecv:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

.field public m_ST_D2D_Devicename:Ljava/lang/String;

.field public m_ST_D2D_FamilyID:Ljava/lang/String;

.field public m_ST_D2D_FamilyIDHash:J

.field public m_ST_D2D_WiFiMAC:Ljava/lang/String;

.field public m_ST_SSId:Ljava/lang/String;

.field public msendIntentToAutoHotspotD2DFamilyUpdate:Z

.field public req_type:I

.field public waitingForConfigurationSet:Z


# direct methods
.method public static -$$Nest$mcheckIfBleScanResultValid(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApBleScanDetail()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "WifiApWarning"

    const-string p1, "Autohotspot checkIfBleScanResultValid null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static -$$Nest$msendIntentToAutoHotspotD2DFamilyUpdate(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->msendIntentToAutoHotspotD2DFamilyUpdate:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->msendIntentToAutoHotspotD2DFamilyUpdate:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680080

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.AcceptPopUp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accepted"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->msendIntentToAutoHotspotD2DFamilyUpdate:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->waitingForConfigurationSet:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisionBRRegistered:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isIntentFilterBRRegistered:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApWarningRecv:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$69;

    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$69;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditTextWatcher:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;

    return-void
.end method


# virtual methods
.method public final CheckWiFiConcurrencyAndProceedFurther()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isP2pConnected()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sem_wifi_p2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->isP2pSoftApConcurrencySupported()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    const-string v7, " isP2pCon: "

    const-string v8, ", isDualBandCurSel: "

    const-string v9, ", isP2pSoftApConcurrencySupported: "

    invoke-static {v7, v1, v8, v3, v9}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isP2pDialogCanBeShown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckWiFiConcurrencyAndProceedFurther - "

    const-string v3, "WifiApWarning"

    invoke-static {v2, v1, v3}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WifiApWarning - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/wifi/SemWifiManager;->reportHotspotDumpLogs(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    const/4 v7, 0x2

    const/16 v8, 0xc

    const/4 v9, -0x1

    if-le v1, v4, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-ne v1, v9, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->supportBridgedApStaConcurrency()Z

    move-result v1

    if-nez v1, :cond_4

    if-eq v0, v7, :cond_2

    if-ne v0, v2, :cond_4

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_3
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v10, "display"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v11

    if-ne v11, v7, :cond_6

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    if-ne v1, v7, :cond_6

    const-string v0, "isWirelessDexEnabled:true"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_5
    const-string v0, "WirelessDex is enabled. Create dailog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_6
    const-string v1, "isWirelessDexEnabled:false"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v10

    if-ne v10, v7, :cond_8

    invoke-virtual {v1}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "isSmartViewEnabled:true"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_9

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_7
    const-string v0, "Smartview is enabled. Create dailog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_8
    const-string v1, "isSmartViewEnabled:false"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNanEnabledDialogRequired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_a
    const-string v0, "WiFi Nan is enabled. Create dailog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_b
    const-string v1, "WiFi P2p is connected. Create dailog"

    const/16 v10, 0x1f

    if-eq v0, v7, :cond_f

    if-ne v0, v2, :cond_c

    goto :goto_1

    :cond_c
    if-eqz v6, :cond_e

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_d
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_e
    const-string v0, " Wi-Fi is not enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    goto/16 :goto_6

    :cond_f
    :goto_1
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_12

    if-eqz v6, :cond_11

    const-string v0, "Dualband supported model,WiFi P2p is connected. Create dailog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_10
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_11
    const-string v0, "Dualband supported model, so dont check for WifiSharing Switch if Autohotspot client in trying to enable in single band"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    goto/16 :goto_6

    :cond_12
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_4

    :cond_13
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz v6, :cond_15

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_14
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getWifiConnectedFrequency()I

    move-result v0

    if-eq v0, v9, :cond_20

    const-string v1, "Frequency : "

    invoke-static {v0, v1, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eq v0, v9, :cond_19

    const/16 v6, 0x96c

    if-lt v0, v6, :cond_16

    const/16 v6, 0x9b4

    if-gt v0, v6, :cond_16

    goto :goto_2

    :cond_16
    const/16 v6, 0x170c

    if-le v0, v6, :cond_17

    move v7, v1

    goto :goto_2

    :cond_17
    move v7, v2

    :goto_2
    if-ne v7, v2, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getIndoorStatus()I

    move-result v5

    :cond_18
    move v0, v5

    move v5, v7

    goto :goto_3

    :cond_19
    move v0, v5

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Frequency band of connected AP:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WiFi Sharing lite model. Wifi connected , indoor status:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v4, :cond_1b

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_1a
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_1b
    const/16 v0, 0x29

    if-ne v5, v2, :cond_1d

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v1, v9, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_1d
    if-ne v5, v1, :cond_1f

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v1, v9, :cond_1e

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    goto/16 :goto_6

    :cond_20
    const-string v0, "WiFi Sharing lite model. Wifi not connected"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    goto/16 :goto_6

    :cond_21
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "WiFi Sharing  model."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_23

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_22
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_6

    :cond_23
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    goto/16 :goto_6

    :cond_24
    const-string p0, "not handling in any case, it is an error"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_25
    :goto_4
    const-string v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1e

    const-wide/16 v6, 0x258

    if-nez v0, :cond_28

    const-string v0, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_5

    :cond_26
    const-string v0, "WiFi Sharing not supported/not enabled. Create dailog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_27

    const-string v0, "Autohotspot client is trying to enable,so dont show Wi-Fi disabble diaalog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_saved_state"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_27
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_6

    :cond_28
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getWifiConnectedFrequency()I

    move-result v0

    if-eq v0, v9, :cond_2a

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v9, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_29
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_6

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$71;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    return-void
.end method

.method public final buttonValidate()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

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

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v0

    cmpg-double v0, v3, v0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final checkFirstTimeConfigureAndProceedFurther()V
    .locals 5

    const-string v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUserDefinedPasswordSetForTMO()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_1
    const-string v0, "WifiApWarning"

    const-string v1, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "needresult"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching WifiApEditSettings activity with title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f14332d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    const/16 v2, 0xd48

    iput v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->waitingForConfigurationSet:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CheckWiFiConcurrencyAndProceedFurther()V

    :goto_0
    return-void
.end method

.method public final checkFirstTimeWiFiSharingDialogAndProceedFurthur()V
    .locals 5

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string/jumbo v3, "wifi_ap_wifi_sharing"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARINGLITE:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "wifi_ap_first_time_wifi_sharing_dialog"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_2
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkFirstTimeConfigureAndProceedFurther()V

    :goto_0
    return-void
.end method

.method public final checkifProvisioningAPKPresent()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "isPackageExists | package is enabled ? "

    const-string v5, "WifiApWarning"

    if-nez v0, :cond_0

    :goto_0
    move v6, v1

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    if-eqz v6, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "isPackageExists | package is not system app or not available"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "Package not found : "

    invoke-static {v0, v3, v5}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "package mprov : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disabled."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v0, 0x7f141a28

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_3
    return v2
.end method

.method public final collapsePanels()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method public final enableTethering(Z)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v0

    if-eqz p1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "LGT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x7f14341a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    const-string v1, "enableTethering: "

    const-string v2, " mBand: "

    invoke-static {v1, v2, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const-string v3, "WifiApWarning"

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    if-eq v1, v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto/16 :goto_4

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    new-instance v5, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v5, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v6, v4, :cond_9

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, " mBand : "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",mChannel:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_5

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$73;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_5
    and-int/2addr v3, v8

    if-eqz v3, :cond_6

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$73;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    const/16 v4, 0x95

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_6
    if-lez v4, :cond_8

    const/16 v3, 0xb

    if-le v4, v3, :cond_7

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$73;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_8
    :goto_1
    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$73;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v3, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v5, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_9
    :goto_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    if-nez v3, :cond_a

    invoke-virtual {v5, v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    :cond_a
    if-lt v3, v7, :cond_b

    const/4 v0, 0x3

    if-gt v3, v0, :cond_b

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    invoke-virtual {v5, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_c
    :goto_3
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :goto_4
    return-void
.end method

.method public final getInputDataInDataUsageConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;-><init>(J)V

    return-object v0
.end method

.method public final getWifiConnectedFrequency()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wifi Frequency is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApWarning"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final isOperatorRequiresProvisioning()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    const-string v1, "WifiApWarning"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vendor.wifiap.provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Skip isProvisioningCheck"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->isProvisioningNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " provisioning is not required for this operator, operator:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070125

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length p0, v0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " provisioning app is not set in CSCfeature, operator:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final isUserDefinedPasswordSetForTMO()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isWifiSharingEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p3, "onActivityResult requestCode"

    const-string/jumbo v0, "resultCode "

    const-string v1, "WifiApWarning"

    invoke-static {p3, v0, p1, p2, v1}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 p3, 0x1

    if-ne p3, p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_7

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x258

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/4 v6, -0x1

    const-string/jumbo v7, "wifi_saved_state"

    if-nez p1, :cond_b

    if-ne p2, v6, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_7

    :cond_1
    const-string p1, "provision failed"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    sget-boolean p2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {p2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v8

    if-nez v8, :cond_2

    :goto_0
    move p2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    :goto_1
    if-eqz p2, :cond_4

    const-string p1, "Wifi Sharing Provision failed but wifi connected"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :cond_4
    sget-boolean p2, Lcom/android/settings/Utils;->USE_BIXBY:Z

    if-eqz p2, :cond_5

    sput-boolean v0, Lcom/android/settings/Utils;->USE_BIXBY:Z

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p2

    if-eq p2, v5, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p2

    if-ne p2, v4, :cond_7

    :cond_6
    const-string p2, "WifiAp is disabled: provisioning fail"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    if-ne p1, p3, :cond_7

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_7
    :goto_2
    iget p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq p2, v6, :cond_8

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v1, 0xb

    invoke-virtual {p2, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_8
    if-ne p1, p3, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_7

    :cond_b
    const/4 v8, 0x3

    const-string v9, " provisioning failed, enabling Wifi "

    if-ne p1, v8, :cond_f

    if-ne p2, v6, :cond_c

    const-string p1, "privision success, checking after softap enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_7

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-eq p1, v4, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-ne p1, v5, :cond_e

    :cond_d
    const-string p1, "Disabling MHS as Provisioning failed after MHS enabled by startTethering"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p3, :cond_e

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_3
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_7

    :cond_f
    const/4 v8, 0x2

    if-ne p1, v8, :cond_17

    const-string p1, "VZW"

    if-ne p2, v6, :cond_11

    const-string p2, "privision success, wifi disconnected ,restart provision case"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    sget-object p2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_7

    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_7

    :cond_11
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    sget-object p2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-boolean p1, Lcom/android/settings/Utils;->SPF_SupportMobileApEnhanced:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "wifi_ap_smart_tethering_settings"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_12

    goto :goto_4

    :cond_12
    const-string p1, "for VZW show Wi-fiDisconnect ,dont disabling  wifi sharing as Autohotspot case"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    :goto_4
    const-string p1, "for VZW show Wi-fiDisconnect ,disabling  wifi sharing"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const p2, 0x7f143449

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "wifi_ap_wifi_sharing"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "WIFI_AP_WIFI_SHARING provider value after putting 0"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-eq p1, v4, :cond_15

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-ne p1, v5, :cond_16

    :cond_15
    const-string p1, "Disabling MHS as Provisioning failed in wifi disconneted case"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p3, :cond_16

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_17
    :goto_7
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-string v0, "WifiApWarning"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAOSPWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    const v1, 0x7f15037c

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isOperatorRequiresProvisioning()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisionBRRegistered:Z

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$69;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.unifiedtp.PROVISION_HOTSPOT_TRIGGER_ACTION"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    const-string v7, "com.samsung.unifiedtp.permission.PROVISION_HOTSPOT_TRIGGER"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisionBRRegistered:Z

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isIntentFilterBRRegistered:Z

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isIntentFilterBRRegistered:Z

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string/jumbo v1, "wifiap_warning_dialog_type"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const-string/jumbo v1, "req_type"

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const-string v1, "extra_type"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const-string/jumbo v1, "wifiap_band"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    const-string/jumbo v1, "wifiap_security"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    const-string/jumbo v1, "wifiap_set_security"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    const-string v1, "mhs_wifi_configuration"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onCreate req_type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",extra_type:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",mDialogType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",mChangeSecurity:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ",mBand:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",autohotspot_security:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    invoke-static {v5, v12, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mChangeSecurity:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autohotspot_security:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "MM-dd HH:mm:ss.SSS"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "wifi_ap_wifiapwarning_enabled_history"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string/jumbo v5, "registerFinishReceiver"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isregisterFinishReceiver:Z

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApWarningRecv:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    invoke-direct {v8, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApWarningActivityRunning(I)V

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v5, v3, :cond_21

    if-eq v5, v7, :cond_22

    if-eq v5, v6, :cond_23

    const-string v8, "VZW"

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/16 v12, 0xc

    if-eq v5, v9, :cond_18

    const/4 v4, 0x6

    if-eq v5, v4, :cond_17

    const/4 v4, 0x7

    if-eq v5, v4, :cond_16

    const/16 v4, 0x2a

    if-eq v5, v4, :cond_15

    const/16 v4, 0x2b

    if-eq v5, v4, :cond_13

    const/16 p1, 0x33

    if-eq v5, p1, :cond_12

    const-string p1, "provisioning APK is not present"

    const/16 v4, 0x35

    const/high16 v8, 0x800000

    const-string v9, "TETHER_TYPE"

    const-string v13, "android.intent.action.MAIN"

    if-eq v5, v4, :cond_c

    const/16 v4, 0x3d

    if-eq v5, v4, :cond_6

    const/16 p1, 0x3e

    if-eq v5, p1, :cond_4

    packed-switch v5, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_0
    const-string p1, "DIALOG_CELLULAR_DUN_FAILED 1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :pswitch_1
    const-string p1, "DIALOG_CLIENT_ACCEPT_WIFI_PROFILE_SHARING 1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :pswitch_2
    const-string p1, "DIALOG_WARN_AUTO_HOTSPOT_CONNECTION_FIRST_TIME 1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x39

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :pswitch_3
    const-string p1, "DIALOG_WARN_AUTO_HOTSPOT_DISCONNECTED 1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x38

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :pswitch_4
    const-string p1, "DIALOG_WARN_ALLOW_AUTOHOTSPOT_DISCOVERY 1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const/16 p1, 0x37

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToAddOrUpdated(Landroid/net/wifi/WifiConfiguration;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v1

    if-eq v1, v12, :cond_8

    if-ne v1, v11, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_8
    :goto_0
    const-string v1, "After softap enabled , check provisioning now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, " sateLitemode ON, dont turnon"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v10, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isOperatorRequiresProvisioning()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkifProvisioningAPKPresent()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p1, "checkProvisioningAfterSoftApEnabled"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v0, v2

    aget-object v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v6}, Lcom/android/internal/app/AlertActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_a
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_b
    const-string p1, "checkProvisioningAfterSoftApEnabled,provisioning is not required, keep same state"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v1

    if-eq v1, v12, :cond_e

    if-ne v1, v11, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_e
    :goto_1
    const-string/jumbo v1, "wifi disconnected check for provisioning if required"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string p1, " sateLiteModeON, dont turnon"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v10, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isOperatorRequiresProvisioning()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkifProvisioningAPKPresent()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p1, "checkProvisioningAfterWifiDisconnected"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v0, v2

    aget-object v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v7}, Lcom/android/internal/app/AlertActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_10
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_11
    const-string p1, "provisioning is not required, keep same state"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto/16 :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :cond_13
    const-string v0, "mD2DDeviceName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_Devicename:Ljava/lang/String;

    const-string v0, "mD2DFamilyID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_FamilyID:Ljava/lang/String;

    const-string v0, "mD2DHashFamily"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_FamilyIDHash:J

    const-string v0, "mD2DDeviceWiFiMAC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_WiFiMAC:Ljava/lang/String;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_WiFiMAC:Ljava/lang/String;

    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :cond_15
    const-string/jumbo v0, "st_ssid_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_SSId:Ljava/lang/String;

    const-string v0, "battery_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_4

    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    goto/16 :goto_4

    :cond_18
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p1

    if-eq p1, v12, :cond_1d

    const/16 v1, 0xa

    if-ne p1, v1, :cond_19

    goto :goto_2

    :cond_19
    if-ne p1, v11, :cond_1a

    const-string p1, " Enabled, trun off "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v10, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto/16 :goto_4

    :cond_1a
    const/16 v1, 0xb

    if-eq p1, v1, :cond_1b

    const/16 v1, 0xe

    if-ne p1, v1, :cond_1c

    :cond_1b
    const-string p1, " Disabled, try to turn on"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isSatelliteModeOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const-string p1, " sateLiteModeNO, dont turnon"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto/16 :goto_4

    :cond_1d
    :goto_2
    const-string p1, " Enabling/disabling, do nothing "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto/16 :goto_4

    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const-string p1, "checkVZWRoamingAndProceedFurthur"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "us"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "In VZW roaming"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq p1, v4, :cond_1f

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1, v12}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_1f
    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_4

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkFirstTimeWiFiSharingDialogAndProceedFurthur()V

    goto :goto_4

    :cond_21
    const-string p1, "DIALOG_HOTSPOT_NO_DATA"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string p1, "DIALOG_NAI_MISMATCH"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const-string p1, "DIALOG_TETHERING_DENIED"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1435c7

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v0, v3, :cond_24

    const v0, 0x7f1435c8

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_24
    if-ne v0, v7, :cond_25

    const v0, 0x7f1435c5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_25
    const v0, 0x7f1435c6

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_3
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v0, v3, :cond_26

    if-eq v0, v6, :cond_26

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v1, 0x7f140d30

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_26
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_27
    :goto_4
    return-void

    :cond_28
    :goto_5
    const-string p1, "Error: this activity may be started only with intent"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

.method public final onDestroy()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isregisterFinishReceiver:Z

    const-string v1, "WifiApWarning"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unregisterFinishReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isregisterFinishReceiver:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApWarningRecv:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApWarningActivityRunning(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_wifiapwarning_destroyed_history"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    const-string v0, "onDestroy()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isOperatorRequiresProvisioning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisionBRRegistered:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$69;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisionBRRegistered:Z

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isIntentFilterBRRegistered:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isIntentFilterBRRegistered:Z

    :cond_6
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 3

    const-string v0, "onPause()"

    const-string v1, "WifiApWarning"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApWarningActivityRunning(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onPause() sleep"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :cond_2
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string v0, "onResume()"

    const-string v1, "WifiApWarning"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApWarningActivityRunning(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->waitingForConfigurationSet:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "waitingForConfigurationSet()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->waitingForConfigurationSet:Z

    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUserDefinedPasswordSetForTMO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CheckWiFiConcurrencyAndProceedFurther()V

    :cond_1
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    const-string p0, "WifiApWarning"

    const-string v0, "onStart()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    const-string p0, "WifiApWarning"

    const-string v0, "onStop()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    return-void
.end method

.method public final sendBroadcastEnablingHotspotCancel()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public final showNextHotspotDialog(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v4, 0x1

    const/16 v5, 0x20

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v6, 0x4

    iput v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x5

    iput v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    :goto_1
    const-string v6, "id :"

    const-string v7, " dialogtheme: "

    invoke-static {v1, v6, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    const-string v8, "WifiApWarning"

    invoke-static {v6, v7, v8}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const v9, 0x7f140d33

    if-eq v1, v6, :cond_12

    const/16 v6, 0xe

    if-eq v1, v6, :cond_11

    const/16 v6, 0x15

    if-eq v1, v6, :cond_10

    const v6, 0x7f14181f

    const/16 v10, 0x1c

    const v11, 0x7f140d30

    if-eq v1, v10, :cond_f

    const/16 v10, 0x22

    if-eq v1, v10, :cond_e

    const/16 v10, 0x23

    if-eq v1, v10, :cond_d

    const/16 v10, 0x33

    if-eq v1, v10, :cond_c

    const/16 v10, 0x34

    if-eq v1, v10, :cond_b

    packed-switch v1, :pswitch_data_0

    const-string v6, "keyguard"

    const v13, 0x103012b

    const v14, 0x1030128

    packed-switch v1, :pswitch_data_1

    const v2, 0x7f142cc1

    packed-switch v1, :pswitch_data_2

    const-string v2, "\n"

    const v6, 0x7f1421db

    const-string v10, ""

    const v12, 0x7f1432c8

    const-string v15, " "

    const v3, 0x102000b

    packed-switch v1, :pswitch_data_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto/16 :goto_9

    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    if-ne v3, v5, :cond_2

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0a3e

    invoke-static {v2, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a0492

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f143465

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0a0490

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditTextWatcher:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v5

    double-to-int v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    const v1, 0x7f0a048f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    const v1, 0x7f143301

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v2, 0x7f1432e7

    invoke-virtual {v3, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v2, 0x7f140b72

    invoke-virtual {v3, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v3, v11, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v2, 0x17

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitChangeLimitButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->buttonValidate()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f14331e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f14331a

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f14331b

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v5, 0x7f14331c

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v6, 0x7f14331d

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x14

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mhs_wifi_network_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v15, v1

    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f143431

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x15

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x16

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f143434

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    goto/16 :goto_9

    :pswitch_3
    const-string v1, "DIALOG_WARN_AUTO_HOTSPOT_CONNECTION_FIRST_TIME 2"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v1, v12}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v6, 0x7f1432c3

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v6, v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f143478

    invoke-static {v7, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v8, 0x19

    invoke-direct {v7, v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v8, 0xf

    invoke-direct {v7, v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    new-instance v6, Landroid/text/SpannableString;

    invoke-static {v5, v2, v1}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    const/4 v8, 0x0

    invoke-direct {v2, v0, v7, v8, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/AlertDialog;ZZ)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    const/16 v4, 0x21

    invoke-virtual {v6, v2, v7, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotConnectionDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_4
    const-string v1, "DIALOG_WARN_AUTO_HOTSPOT_DISCONNECTED 2"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f1432ce

    goto :goto_4

    :cond_4
    const v1, 0x7f1432cc

    :goto_4
    invoke-static {v1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v2, v12}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v6, v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f1432d0

    invoke-static {v7}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v8, 0x18

    invoke-direct {v7, v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v6, v9, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v8, 0xe

    invoke-direct {v7, v0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v5, "%s"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-direct {v5, v0, v7, v4, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/AlertDialog;ZZ)V

    add-int/2addr v2, v1

    const/16 v4, 0x21

    invoke-virtual {v6, v5, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->autoHotspotDisconnectedDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_5
    const-string v1, "DIALOG_WARN_ALLOW_AUTOHOTSPOT_DISCOVERY 2"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "wifiap_adv_autohotspot_ssid"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v7, "wifiap_adv_autohotspot_mac"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "sem_wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f1432ba

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    new-instance v12, Landroid/app/AlertDialog$Builder;

    iget v13, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v12, v0, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    invoke-direct {v10, v0, v5, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v6, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v6, 0x17

    invoke-direct {v5, v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v12, v11, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v6, 0xd

    invoke-direct {v5, v0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v12, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1432bb

    invoke-static {v6}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v6

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Landroid/text/SpannableString;

    invoke-static {v7, v2, v8}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v5, v6, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$AutoHotspotConnectionClickable;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/AlertDialog;ZZ)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v7, v4

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->allowAutohotspotDiscoveryDialogBox:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_6
    const-string v1, "CASE DIALOG_WARN_DUALAP_WIFI_DISABLE"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143319

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f141c4e

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v4, 0xf

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0xe

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f143429

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_7
    iput-boolean v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->msendIntentToAutoHotspotD2DFamilyUpdate:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DIALOG_D2D_FAMILYID_ACCEPT create "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_Devicename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",hash:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_FamilyIDHash:J

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",m_ST_D2D_WiFiMAC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_D2D_WiFiMAC:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v3, 0x3000001a

    invoke-virtual {v1, v3, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x680080

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1432fa

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/4 v4, 0x7

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v4, 0x7f143327

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1432fb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DIALOG_WARN_LOW_BATTERY_ST create "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_SSId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f142cbb

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_SSId:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v4, 0x7f142cc6

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f142cbc

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->m_ST_SSId:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f14344e

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x15

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f143453

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_a
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v7, v4}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_6
    :pswitch_b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f143451

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x14

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f143450

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f14342d

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x1a

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v3, 0x7f142fd6

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x1b

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f14342f

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_d
    if-nez v2, :cond_7

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    goto :goto_5

    :cond_7
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    :goto_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Setting the DB val :settings.Secure.WIFI_AP_DUAL_POPUP to 1"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_ap_dual_popup"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f143425

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f141c4e

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v4, 0x12

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "showNextHotspotDialog: Keyguard is locked"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "showNextHotspotDialog: Non secure lock"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;

    invoke-direct {v3}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    invoke-virtual {v2, v0, v3}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x7f143429

    invoke-static {v0, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_9

    :pswitch_e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f141611

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f143416

    invoke-static {v2, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/16 v4, 0x9

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f143419

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :cond_9
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v4, "$20.48"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f143415

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f143418

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_6
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_f
    const-string v1, "no sim"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f141806

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    :cond_a
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f143708

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_7
    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x18

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f14370a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :pswitch_10
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143707

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x1c

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x16

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :cond_b
    const-string v1, "CASE DIALOG_WARN_WIRELESS_DEX_DISABLE"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143459

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v3, 0x7f143314

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f14345a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :cond_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143457

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f14344c

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v3, 0x7f142fcc

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x13

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :cond_d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143423

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v3, 0x7f1432e4

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f143424

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :cond_e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f143401

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    const v3, 0x7f142fd0    # 1.96974E38f

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f143403

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :cond_f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f140ccf

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v11, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto/16 :goto_9

    :cond_11
    const-string v1, "DIALOG_WIFI_SHARING_FIRST_TIME"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f1436a6

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v4, 0x7f1436a2

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    const/16 v4, 0x1d

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v2, v9, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v4, 0x12

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    goto :goto_9

    :cond_12
    const-string v1, "DIALOG_WIFI_DISCONNECTED_HOTSPOT_USAGE_WARNING"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "SAMSUNG_HOTSPOT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    :goto_8
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "wifi_disconnect_do_not_show"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "for VZW show Wi-fiDisconnect isDoNotShowAgain "

    invoke-static {v1, v2, v8}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v1, v4, :cond_14

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v2, 0x7f14344b

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void

    :cond_14
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0a4e

    invoke-static {v2, v3, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a1189

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v4, 0x7f143448

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$57;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_d
        :pswitch_c
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
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

.method public final startProvisioningIfNecessary()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "WifiApWarning"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isActiveNetworkisCellular(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getWifiConnectedFrequency()I

    move-result v6

    if-ne v6, v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Wi-Fi is not connected and mobile data is enabled"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :cond_0
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApTodayTotalDataUsage(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApActiveSessionDataLimit(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v0

    iget-wide v6, v4, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    double-to-int v4, v6

    iget-wide v6, v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    double-to-int v0, v6

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    if-lt v4, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    const-string v0, "isMobileDataUsageSupported data reached message"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mBand:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->setAutohotspotToastMessage(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "MHSNoProvisionPreferences"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "showhotspotdialoglimit"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBooleanFromSharedPreference - showhotspotdialoglimit : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v0, "isMobileDataUsageSupported dialog already shown skip"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->collapsePanels()V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_1

    :cond_3
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_1
    return-void

    :cond_4
    const-string/jumbo v0, "startProvisioningIfNecessary"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isOperatorRequiresProvisioning()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->checkifProvisioningAPKPresent()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_7

    const-string v0, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setProvisionSuccess(Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v5, v4, v1

    aget-object v2, v4, v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "TETHER_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "WifiApWarning launching provisioning"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/AlertActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    :cond_9
    const-string v0, "provisioning APK is not present"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->enableTethering(Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    :goto_5
    return-void
.end method
