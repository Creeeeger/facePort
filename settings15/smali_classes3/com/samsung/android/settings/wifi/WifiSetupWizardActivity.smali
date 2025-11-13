.class public Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;
.implements Lcom/samsung/android/settings/wifi/WifiLoadingControllerListener;


# static fields
.field public static final DEV:Z


# instance fields
.field public activationLoadingDialog:Landroid/app/ProgressDialog;

.field public isSupportDeviceActivationCHN:Z

.field public final mActivationReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

.field public mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

.field public mAllowCaptiveByKme:Z

.field public mAutoFinishByConnectNetworkEnabled:Z

.field public mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

.field public mCm:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mCurrentWifiState:I

.field public mDataOnButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

.field public mIsDialogPopedUp:Z

.field public mIsEsimDetected:Z

.field public final mIsEsimSupported:Z

.field public mIsFristResultReceived:Z

.field public mIsFrpChallengeRequired:Z

.field public mIsKmeSupported:Z

.field public mIsLoading:Z

.field public mIsNetworkCheckingOnGoing:Z

.field public mIsNetworkRequiredByCustomer:Z

.field public mIsNetworkRequiredByFrp:Z

.field public mIsNetworkRequiredByKme:Z

.field public mIsNetworkValidated:Z

.field public mIsPsimDetected:Z

.field public mIsSkipButtonEnabled:Z

.field public final mIsSupportBootstrap:Z

.field public mIsUsedSprintNewSetupWizard:Z

.field public mIsWifiCompletelyAvailable:Z

.field public mIsWifiTurningOn:Z

.field public mLastClickTime:J

.field public mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field public mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

.field public mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field public mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;


# direct methods
.method public static -$$Nest$mactivationToastShowing(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mainAction(Z)V

    return-void
.end method

.method public static -$$Nest$mputCHNActivationDone(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "chn_activation_status"

    const-string v1, "activation_done"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsDialogPopedUp:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mAutoFinishByConnectNetworkEnabled:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SetupWizard_SupportEsimAsPrimary"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimSupported:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimDetected:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsPsimDetected:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupporteSimBootstrap"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsSupportBootstrap:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isSupportDeviceActivationCHN:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCurrentWifiState:I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivationReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    return-void
.end method

.method public static isTSSAndOperatorNotFixed()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportBlockSkipForSetupWizard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isVendorSupportTSS : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " SalesCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSetupWizard"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "mdc.singlesku"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "mdc.singlesku.activated"

    invoke-static {v3, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSupportTrueSingleSKU "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isTSSActivated "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "Support TSS model and TSS Activated"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x1fa0

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    move-object v2, v0

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_2
    move-exception p0

    move-object v2, v0

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5
    if-nez v2, :cond_0

    goto :goto_6

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0
.end method


# virtual methods
.method public final forgetCurrentNetwork()V
    .locals 7

    const-string v0, "WifiSetupWizard"

    const-string v1, "forget current AP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v1, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_4

    iget v1, v5, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const-string/jumbo v3, "sem_wifi"

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v3, "disconnect"

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    const-string v3, "forget"

    invoke-static {v0, v3, v5, v2}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final getNextButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasNextButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final is523JigOn()Z
    .locals 10

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/switch/attached_dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/rid_adc/rid_adc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sec/ccic/novbus_rp22k"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "WifiSetupWizard"

    if-eqz v6, :cond_0

    const-string v6, "22RP exists"

    invoke-static {v7, v6}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v6, "persist.sys.setupwizard.jig_on_wifisetup"

    const-string v8, "0"

    const/4 v9, 0x0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "File Does not Exist!"

    invoke-static {v7, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JIG Info "

    const-string v4, " / "

    invoke-static {v3, v0, v4, v1, v4}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JIG UART OFF"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "1"

    if-nez v3, :cond_4

    :try_start_1
    const-string v3, "JIG UART ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "JIG UART ON/VB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "255K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "JIG Wrong value"

    invoke-static {v7, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "JIG is inserted. Skip the Wi-Fi step"

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "JIG ON"

    invoke-static {v7, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "input is not in correct format"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v9
.end method

.method public final isNetworkAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isNetworkRequired()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isTSSAndOperatorNotFixed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByCustomer:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByFrp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByKme:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFrpChallengeRequired:Z

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

.method public final isWifiNetworkConnected$1()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final mainAction(Z)V
    .locals 9

    const-string v0, "Rune"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick MainAction isWifiNetworkConnected() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected$1()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isNetworkAvailable() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSkipButtonEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsSkipButtonEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSetupWizard"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isSupportDeviceActivationCHN:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "chn_activation_status"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "activation_done"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->is523JigOn()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v5, "isOemUnlockAllowed="

    :try_start_0
    const-string v6, "oem_lock"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/oemlock/OemLockManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    :goto_0
    if-nez v1, :cond_5

    const-string v1, "kernel: "

    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/version"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v1, "/proc/version not exists"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    move v1, v3

    goto/16 :goto_7

    :cond_1
    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v7}, Lcom/samsung/android/settings/Rune;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    const-string v1, "read kernelVersion failed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :goto_3
    move-object v6, v7

    goto :goto_8

    :goto_4
    move-object v6, v7

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ".*\\-(g[0-9a-z]{12}\\-ab.+)"

    invoke-virtual {v5, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "kernel is non Samsung"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    move v1, v4

    goto :goto_7

    :cond_3
    :try_start_6
    const-string v1, "kernel is Samsung"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_5
    move-exception v1

    :goto_6
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v6, :cond_0

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_2

    :goto_7
    if-nez v1, :cond_5

    move v1, v4

    goto :goto_a

    :goto_8
    if-eqz v6, :cond_4

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_9
    throw p0

    :cond_5
    move v1, v3

    :goto_a
    if-eqz v1, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mLastClickTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    cmp-long p1, v5, v7

    if-gez p1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mLastClickTime:J

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_b

    :cond_7
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "INFO : isSimMissingToastRequired WIFI only model return false"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v5, "USC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v5, "CscFeature_SetupWizard_SupportEsimAsPrimary"

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "INFO : USCC requests to remove the toast in models that supports eSIM as primary."

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_9
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSimMissing(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSimReady()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_a
    move p1, v4

    goto :goto_d

    :cond_b
    :goto_b
    const-string p1, "INFO : isSimMissingToastRequired LDU ignore return false"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_c
    move p1, v3

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "INFO : isSimMissingToastRequired : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/2addr p1, v4

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140250

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_e

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected$1()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->selectNetworkPopUpShowing()V

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140255

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p0, v0, p1, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->activationLoadingDialog:Landroid/app/ProgressDialog;

    const-string p1, "doActivationRegister."

    invoke-static {v2, p1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.activation"

    const-string v1, "com.samsung.android.activation.ActivationService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_e
    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsSkipButtonEnabled:Z

    if-nez v0, :cond_10

    const-string p1, "Users try to skip at blocked case"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->showSkipDialog(Z)V

    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsUsedSprintNewSetupWizard:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsKmeSupported:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "samsung_eula_agree"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected$1()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.secsetupwizard.B2B_CHECK_PROGRESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "isLaunchedFromWifi"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_10

    :cond_12
    if-eqz p1, :cond_13

    const-string p1, "finish with RESULT_SKIP"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_10

    :cond_13
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected$1()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->showSkipDialog(Z)V

    move p1, v3

    goto :goto_f

    :cond_14
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->isNextStepBlocked()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result p1

    goto :goto_f

    :cond_15
    move p1, v4

    :goto_f
    if-eqz p1, :cond_16

    const-string p1, "finish with RESULT_OK"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_16
    :goto_10
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_17

    move p0, v3

    goto :goto_11

    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected$1()Z

    move-result p0

    invoke-static {p0, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    add-int/2addr p0, v4

    :goto_11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "conneciton"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "WIFI_230"

    const-string v0, "0104"

    invoke-static {p0, v0, p1, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult Called "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WifiSetupWizard"

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WifiSetupWizard"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.activation"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isSupportDeviceActivationCHN:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x140

    if-gt v3, v4, :cond_1

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3f8ccccd    # 1.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_1
    const/16 v4, 0x19b

    if-ge v3, v4, :cond_3

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666    # 1.3f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_3

    :cond_2
    const v0, 0x7f0d0a9b

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    goto :goto_1

    :cond_3
    const v0, 0x7f0d0a9a

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    const v3, 0x7f0a11a8

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mLoadingListener:Lcom/samsung/android/settings/wifi/WifiLoadingControllerListener;

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    invoke-virtual {p0, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "isKmeSupported"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsKmeSupported:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "is_network_required"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByFrp:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "is_network_required_by_kme"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByKme:Z

    sget-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Wifi_SupportNetworkConnectionsRequired"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByCustomer:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "allowCaptiveByKme"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mAllowCaptiveByKme:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "useSprintNewSetupWizard"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsUsedSprintNewSetupWizard:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isFrpChallengeRequired(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFrpChallengeRequired:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isTSSAndOperatorNotFixed = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isTSSAndOperatorNotFixed()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "mIsKmeSupported = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsKmeSupported:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsNetworkRequiredByKme = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByKme:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mAllowCaptiveByKme = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mAllowCaptiveByKme:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsNetworkRequiredByFrp = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByFrp:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsNetworkRequiredByCustomer = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByCustomer:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsFrpChallengeRequired = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFrpChallengeRequired:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsUsedSprintNewSetupWizard = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsUsedSprintNewSetupWizard:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "If already network is available, do not skip Wi-Fi Setup automatically"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mAutoFinishByConnectNetworkEnabled:Z

    :cond_6
    const v0, 0x7f0a0f5d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071265

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    const v4, 0x7f0a11aa

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {v0, p0, v4, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/widget/TextView;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    const v4, 0x7f0a11ab

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {v0, p0, v4, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/widget/TextView;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDataOnButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    const-string v0, "persist.sys.setupwizard.jig_on_wifisetup"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequired()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_provisioning_mobile_data"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDataOnButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Ljava/lang/Object;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Ljava/lang/Object;

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f080aff

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f1436d6

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    const v4, 0x7f14197b

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    const v4, 0x7f1436b1

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButton(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "wifi.test.off"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v4, v2

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "first_enter_wifisetupwizard"

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsWifiTurningOn:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move v4, v1

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_a

    const v4, 0x7f1436d8

    goto :goto_3

    :cond_a
    const v4, 0x7f1436d9

    :goto_3
    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move v4, v2

    goto :goto_4

    :cond_c
    iget-boolean v5, v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByFrp:Z

    if-nez v5, :cond_d

    iget-boolean v4, v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByKme:Z

    if-eqz v4, :cond_b

    :cond_d
    move v4, v1

    :goto_4
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    if-eqz v4, :cond_10

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected$1()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardDialogBuilder;

    iget-boolean v5, v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardDialogBuilder;->mFlagWarningDialog:Z

    if-eqz v5, :cond_e

    const-string v4, "already showing FRP/KME dialog"

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v6, v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardDialogBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v7, v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardDialogBuilder;->mIsNetworkRequiredByFrp:Z

    if-eqz v7, :cond_f

    const v7, 0x7f14356e

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_f
    const-string v7, "Knox Cloud Service"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f14144c

    invoke-virtual {v6, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_5
    iget-object v7, v5, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v6, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iput-boolean v2, v7, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSetupWizardDialogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardDialogBuilder$$ExternalSyntheticLambda0;-><init>(I)V

    const v7, 0x7f1409d0

    invoke-virtual {v5, v7, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    iput-boolean v1, v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardDialogBuilder;->mFlagWarningDialog:Z

    const-string/jumbo v4, "show FRP/KME popup"

    invoke-static {p1, v4}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->checkAndUpdateButton(Z)V

    goto :goto_7

    :cond_10
    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->checkAndUpdateButton(Z)V

    :goto_7
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isSupportDeviceActivationCHN:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivationReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.activation.COMPLETED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v2, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->updateButton(ZZ)V

    const-string/jumbo v0, "skip button gone,show next button"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    if-nez p1, :cond_12

    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    const v0, 0x7f0a08de

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06079f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->runLoading()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isSupportDeviceActivationCHN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivationReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->activationLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->activationLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->activationLoadingDialog:Landroid/app/ProgressDialog;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->unregisterNetworkCallback$1()V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCurrentWifiState:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->unregisterNetworkCallback$1()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    :cond_1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->updateSimState()V

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isTSSAndOperatorNotFixed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->is523JigOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->checkAndUpdateButton(Z)V

    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string p0, "WIFI_230"

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final runLoading()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsWifiTurningOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsLoading:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsWifiTurningOn:Z

    :cond_1
    return-void
.end method

.method public final selectNetworkPopUpShowing()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0b72

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSimMissing(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSimReady()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const v2, 0x7f142a84

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f142a83

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f15023c

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f141a3e    # 1.96862E38f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSimMissing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const v0, 0x7f142a85

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f142a82

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    const v0, 0x7f142a86

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$6;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_5
    return-void
.end method

.method public final showNetworkErrorWarningDialogForFrp(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsDialogPopedUp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsDialogPopedUp:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    const v1, 0x7f141b4b

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final unregisterNetworkCallback$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$9;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiSetupWizard"

    const-string v0, "No need to unregister"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSimState()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimDetected:Z

    sget-object v1, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->semGetProfileClass()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimDetected:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    if-eq v4, v2, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsPsimDetected:Z

    return-void
.end method
