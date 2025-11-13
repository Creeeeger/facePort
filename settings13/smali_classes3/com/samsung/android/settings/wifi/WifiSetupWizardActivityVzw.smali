.class public Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;
.super Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;
.source "WifiSetupWizardActivityVzw.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# static fields
.field private static final EMERGENCY_CALL_TEXT_COLOR:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectionStatus:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogCode:I

.field private mDialogLeftBtnText:Ljava/lang/String;

.field private mDialogMessage:Ljava/lang/String;

.field private mDialogRightBtnText:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaderContent:Landroid/widget/TextView;

.field private mIsAllowBack:Z

.field private mIsFRPLocked:Z

.field private mIsWifiConnected:Z

.field private mLastShownDialogCode:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mRefreshButton:Landroid/widget/TextView;

.field private mUseSoftNavigation:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public static synthetic $r8$lambda$AVupdPfngkaGD2Fsbd--gOhglPk(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$showDialogForSkipButton$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NMOBUsHYiDik4LMdq4NiKSK7DLw(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$showAlertDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q6CRjTPSG62AII41aDlAWu-bJKc(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$showAlertDialog$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SEPbHLf-f46MMOfkLhElGZe0CsE(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDbjG_9ZR2qjRp7_sA9-0GU0eFw(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$showDialogForSkipButton$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dB9VIPW-iKvqd_yO69bdKPueLi0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$showDialogForSkipButton$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fUKQ6NJbrhbCnQovwsLxw5ynrIc(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$showDialogForSkipButton$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jeI-KNmi2X4uT5zxnYl6k3vpDt0(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k6CsRXLULn6YbkOClWsZOEVoGPs(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$showDialogForSkipButton$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nW14aB9613DtqnbRmie4csx_2ns(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectionStatus(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectionStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastShownDialogCode(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mLastShownDialogCode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAlertDialog(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showAlertDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartEmergencyCall(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->startEmergencyCall()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#000000"

    .line 92
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->EMERGENCY_CALL_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;-><init>()V

    .line 119
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/Boolean;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonVisibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/Boolean;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setManualSetupButtonVisibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/Boolean;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonVisibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;Ljava/lang/Boolean;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setManualSetupButtonVisibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method private enableWifiIfNeeded()V
    .locals 5

    const-string v0, "wifi.test.off"

    .line 285
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 286
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "first_enter_wifisetupwizard"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method private forgetCurrentNetwork()V
    .locals 3

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 459
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 461
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-eq v1, v2, :cond_1

    .line 462
    new-instance v0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportDisconnectNetwork()V

    .line 463
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 466
    new-instance v1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportForgetNetwork(I)V

    .line 467
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 474
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 476
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 477
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    .line 227
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->showDialogForSkipButton()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->refreshScanList()V

    return-void
.end method

.method private synthetic lambda$showAlertDialog$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->forgetCurrentNetwork()V

    .line 367
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showAlertDialog$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 378
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->forgetCurrentNetwork()V

    .line 379
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showDialogForSkipButton$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 318
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showDialogForSkipButton$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 320
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 321
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    return-void
.end method

.method private synthetic lambda$showDialogForSkipButton$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 326
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->setFinishAction()V

    return-void
.end method

.method private static synthetic lambda$showDialogForSkipButton$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 329
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$showDialogForSkipButton$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 332
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private readFRPFlag()Z
    .locals 3

    .line 265
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result p0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    return v1

    .line 275
    :cond_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    if-ne p0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method private registerNetworkCallback()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    .line 400
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->unregisterNetworkCallback()V

    .line 403
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 404
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 405
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_1

    .line 406
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private setFinishAction()V
    .locals 3

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    const-string v2, "is_wifi_connected"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 302
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showAlertDialog(I)V
    .locals 3

    .line 351
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mLastShownDialogCode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 357
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 359
    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mLastShownDialogCode:I

    const/16 v2, 0xb

    if-eq p1, v2, :cond_4

    const/16 v2, 0xc

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 371
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsFRPLocked:Z

    if-eqz p1, :cond_3

    .line 372
    sget p1, Lcom/android/settings/R$string;->wifi_captive_portal_message_vzw:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 374
    :cond_3
    sget p1, Lcom/android/settings/R$string;->vzw_captive_portal_signin_dialog_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 375
    sget p1, Lcom/android/settings/R$string;->vzw_captive_portal_signin_dialog_desc:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 377
    :goto_0
    sget p1, Lcom/android/settings/R$string;->okay:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 363
    :cond_4
    sget p1, Lcom/android/settings/R$string;->no_internet_connection_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 364
    sget p1, Lcom/android/settings/R$string;->no_internet_connection:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 365
    sget p1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    .line 385
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 387
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUseSoftNavigation:Z

    if-eqz p1, :cond_5

    .line 388
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x802

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 393
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 394
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_6
    return-void
.end method

.method private showDialogForSkipButton()V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 311
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 314
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 316
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogRightBtnText:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 325
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogRightBtnText:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogLeftBtnText:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 318
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogRightBtnText:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 319
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogLeftBtnText:Ljava/lang/String;

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 339
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUseSoftNavigation:Z

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x802

    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 346
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_5
    return-void
.end method

.method private final startEmergencyCall()V
    .locals 3

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.telephonyui.action.OPEN_EMERGENCY_DIALER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enable_home_key"

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "enable_recent_key"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "enable_status_bar_expand"

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "enable_ice_contact_list"

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "enable_emergency_medical_info"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x24800000

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v1, 0x7e4

    .line 150
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiSetupWizardActivityVzw"

    const-string v0, "Emergency dialer activity not found"

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    .line 445
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    .line 448
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiSetupWizardActivityVzw"

    const-string v0, "No need to unregister"

    .line 450
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getNextButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNextButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsAllowBack:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 158
    invoke-super {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Landroid/app/Activity;

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->readFRPFlag()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsFRPLocked:Z

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsFRPLocked = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsFRPLocked:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSetupWizardActivityVzw"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_setupwizard_vzw:I

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setContentView(I)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->sec_wifi_suw_header:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 167
    sget p1, Lcom/android/settings/R$string;->wifi_suw_title_vzw:I

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderTitle(I)V

    .line 168
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->ssw_wifi_header_title_bottom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderTitleBottomMargin(I)V

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->wifi_secsetup_activity_fragment_layout:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/WifiSettings;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 173
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiSettings;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "phone"

    .line 175
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 177
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 178
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v1, "CscFeature_SetupWizard_SupportEsimAsPrimary"

    invoke-virtual {p1, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    sget p1, Lcom/android/settings/R$string;->wifi_suw_title:I

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setHeaderTitle(I)V

    .line 180
    sget p1, Lcom/android/settings/R$id;->header_content:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHeaderContent:Landroid/widget/TextView;

    .line 181
    sget v1, Lcom/android/settings/R$string;->vzw_wifi_setupwizard_select_a_network_without_sim:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    sget p1, Lcom/android/settings/R$id;->wifi_secsetup_emergency_call_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 184
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    sget v2, Lcom/android/settings/R$string;->vzw_wifi_setupwizard_emergency_call:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->ssw_wifi_emergency_button_start_margin_vzw:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 190
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->ssw_wifi_emergency_button_top_margin_vzw:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 191
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->ssw_wifi_emergency_button_end_margin_vzw:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 192
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$dimen;->ssw_wifi_emergency_button_bottom_margin_vzw:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 189
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->ssw_wifi_emergency_button_start_end_padding_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->ssw_wifi_emergency_button_top_bottom_padding_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 197
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 198
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 195
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 200
    sget v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->EMERGENCY_CALL_TEXT_COLOR:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 204
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "dialog_code"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogCode:I

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dialog_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogTitle:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dialog_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogMessage:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dialog_left_btn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogLeftBtnText:Ljava/lang/String;

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dialog_right_btn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogRightBtnText:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "allowBack"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsAllowBack:Z

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "usesSoftNavigationKeys"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUseSoftNavigation:Z

    .line 223
    sget p1, Lcom/android/settings/R$string;->next_button_label:I

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButton(ILandroid/view/View$OnClickListener;)V

    .line 224
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonVisibility(Ljava/lang/Boolean;)V

    .line 225
    sget p1, Lcom/android/settings/R$string;->wifi_skip_button:I

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setManualSetupButton(ILandroid/view/View$OnClickListener;)V

    .line 233
    sget p1, Lcom/android/settings/R$id;->wifi_secsetup_activity_refresh_list_vzw:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mRefreshButton:Landroid/widget/TextView;

    .line 234
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->enableWifiIfNeeded()V

    const/16 p1, 0xa

    .line 239
    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectionStatus:I

    .line 240
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->unregisterNetworkCallback()V

    .line 246
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 251
    invoke-super {p0}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onResume()V

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->registerNetworkCallback()V

    return-void
.end method
