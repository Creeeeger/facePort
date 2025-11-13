.class public Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "WifiSetupWizardActivity.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;,
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;,
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;,
        Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;
    }
.end annotation


# static fields
.field private static final DEV:Z


# instance fields
.field isCheckingOnGoing:Z

.field private isKmeSupported:Z

.field private isNetworkRequiredByFrp:Z

.field private isNetworkRequiredByKme:Z

.field isWifiInternetAvailable:Z

.field private mActivity:Landroid/app/Activity;

.field private mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataOnButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

.field private mDebugStartWithWifiOff:Z

.field private mIsAutoFinished:Z

.field private mIsDialogPopedUp:Z

.field private mIsEsimDetected:Z

.field private final mIsEsimSupported:Z

.field private mIsFristResultReceived:Z

.field private final mIsNetworkRequiredByCustomer:Z

.field private mIsNetworkValidated:Z

.field private mIsPsimDetected:Z

.field private mIsRegistered:Z

.field private mIsSkipButtonEnabled:Z

.field private mIsUsedSprintNewSetupWizard:Z

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

.field private final mScreenId:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetwork:Landroid/net/Network;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;


# direct methods
.method public static synthetic $r8$lambda$5MjnNuE889o3VBeQ4MCjikxw7nk(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->lambda$showWifiSetupFrpWarningDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FwUfeu0R794JD6mrG6ZLO55_cHc(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gDmqBN-DlE08T1xoZgxYWQZFumM(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pI9AqIaVWz3J9PIVpi05Cfa7fWQ(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->lambda$showWifiSetupFrpWarningDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisNetworkRequiredByFrp(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredByFrp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisNetworkRequiredByKme(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredByKme:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCm(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAutoFinished(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsAutoFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEsimDetected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimDetected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEsimSupported(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFristResultReceived(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFristResultReceived:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNetworkValidated(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkValidated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPsimDetected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsPsimDetected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUsedSprintNewSetupWizard(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsUsedSprintNewSetupWizard:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/wifi/WifiManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNetwork(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiStateButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCm(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/net/ConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAutoFinished(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsAutoFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFristResultReceived(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFristResultReceived:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkValidated(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkValidated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSkipButtonEnabled(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsSkipButtonEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResultHandler(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    return-void
.end method

.method static bridge synthetic -$$Nest$mallowToGoNext(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->allowToGoNext(ZZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misBlockedSkipByRequest(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isBlockedSkipByRequest()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misLandScape(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isLandScape()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNetworkAvailable(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWifiNetworkConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateSimState(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->updateSimState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEV()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 83
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 76
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 113
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    .line 114
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsDialogPopedUp:Z

    const-string v2, "WIFI_230"

    .line 115
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mScreenId:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_SupportNetworkConnectionsRequired"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByCustomer:Z

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_SetupWizard_SupportEsimAsPrimary"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimSupported:Z

    .line 128
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimDetected:Z

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsPsimDetected:Z

    .line 134
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 687
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButtonText(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButtonEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButtonText(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButtonVisibility(I)V

    return-void
.end method

.method private allowToGoNext(ZZLjava/lang/String;)V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    const-string v1, "WifiSetupWizard"

    if-eqz v0, :cond_0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allow to Go Next : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiInternetAvailable:Z

    .line 836
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    const/4 v2, 0x1

    invoke-static {v0, v2, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->-$$Nest$mupdateButton(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;ZZ)V

    :cond_0
    if-eqz p2, :cond_2

    .line 841
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->showWifiSetupFrpWarningDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 843
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception on allowToGoNext: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_1

    .line 845
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->forgetCurrentNetwork()V

    .line 847
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method private getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 894
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 896
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 897
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isBlockedSkipByRequest()Z
    .locals 1

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isTSSAndOperatorNotFixed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByCustomer:Z

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

.method private isDataReadyButOff()Z
    .locals 2

    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioning_mobile_data"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLandScape()Z
    .locals 2

    .line 961
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isLargeScreen(Landroid/content/Context;)Z
    .locals 2

    .line 955
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 956
    iget p1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v0, 0x140

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f8ccccd    # 1.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/16 v0, 0x19b

    if-ge p1, v0, :cond_2

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const p1, 0x3fa66666    # 1.3f

    cmpg-float p0, p0, p1

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNetworkAvailable()Z
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOperatorFixed()Z
    .locals 5

    const-string p0, "mdc.singlesku"

    const/4 v0, 0x0

    .line 383
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "mdc.singlesku.activated"

    .line 384
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportTrueSingleSKU "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiSetupWizard"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTSSActivated "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "Support TSS model and TSS Activated"

    .line 391
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isTSSAndOperatorNotFixed()Z
    .locals 4

    .line 367
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportBlockSkipForSetupWizard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    .line 369
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVendorSupportTSS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " SalesCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSetupWizard"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isOperatorFixed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isWifiNetworkConnected()Z
    .locals 2

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 357
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mainAction(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mainAction(Z)V

    return-void
.end method

.method private synthetic lambda$showWifiSetupFrpWarningDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 862
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->forgetCurrentNetwork()V

    return-void
.end method

.method private synthetic lambda$showWifiSetupFrpWarningDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 864
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsDialogPopedUp:Z

    .line 865
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->forgetCurrentNetwork()V

    const-string p0, "WifiSetupWizard"

    const-string p1, "FRP Warning Dialog is dismissed"

    .line 866
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 908
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 909
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x1fa0

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 911
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 912
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

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 907
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

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v2, v0

    .line 915
    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 913
    :goto_4
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5
    if-nez v2, :cond_0

    goto :goto_6

    .line 917
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method private registerNetworkCallback()V
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->unregisterNetworkCallback()V

    .line 774
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    .line 775
    :cond_1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 776
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 777
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_2

    .line 778
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 829
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private setupInitialWifiState()Z
    .locals 5

    .line 272
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDebugStartWithWifiOff:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return v1

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "first_enter_wifisetupwizard"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v3

    .line 284
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method

.method private unregisterNetworkCallback()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    .line 763
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiSetupWizard"

    const-string v0, "No need to unregister"

    .line 765
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSimState()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsPsimDetected:Z

    goto :goto_1

    .line 408
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsPsimDetected:Z

    .line 413
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimDetected:Z

    .line 415
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    .line 418
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsEsimDetected:Z

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public forgetCurrentNetwork()V
    .locals 3

    const-string v0, "WifiSetupWizard"

    const-string v1, "forget current AP"

    .line 872
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 876
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 877
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 879
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-eq v1, v2, :cond_1

    .line 880
    new-instance v0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    .line 881
    invoke-virtual {v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportDisconnectNetwork()V

    .line 882
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 885
    new-instance v1, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    .line 886
    invoke-virtual {v1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportForgetNetwork(I)V

    .line 887
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_2
    :goto_0
    return-void
.end method

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

.method public is523JigOn()Z
    .locals 8

    .line 921
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/switch/attached_dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 922
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/rid_adc/rid_adc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 923
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sec/ccic/novbus_rp22k"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "WifiSetupWizard"

    if-eqz v6, :cond_0

    const-string v6, "22RP exists"

    .line 925
    invoke-static {v7, v6}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v6, 0x0

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

    .line 949
    invoke-static {v7, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 928
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "JIG UART OFF"

    .line 932
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "JIG UART ON"

    .line 933
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "JIG UART ON/VB"

    .line 934
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "255K"

    .line 935
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "1"

    .line 936
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "JIG Wrong value"

    .line 941
    invoke-static {v7, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 937
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "JIG is inserted. Skip the Wi-Fi step"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "JIG ON"

    .line 938
    invoke-static {v7, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input is not in correct format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v6
.end method

.method public mainAction(Z)V
    .locals 5

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick MainAction isWifiNetworkConnected() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isNetworkAvailable() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSkipButtonEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsSkipButtonEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSetupWizard"

    .line 289
    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsSkipButtonEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Users try to skip at blocked case"

    .line 295
    invoke-static {v1, p1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->showSkipDialog(Z)V

    return-void

    .line 301
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsUsedSprintNewSetupWizard:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isKmeSupported:Z

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "samsung_eula_agree"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.secsetupwizard.B2B_CHECK_PROGRESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "isLaunchedFromWifi"

    .line 305
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x3e9

    .line 306
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "finish with RESULT_SKIP"

    .line 308
    invoke-static {v1, p1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x14

    .line 309
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 311
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->possibleGoToNextStep()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "finish with RESULT_OK"

    .line 312
    invoke-static {v1, p1}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 313
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 323
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 324
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiNetworkConnected()Z

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    add-int/lit8 v2, p0, 0x1

    .line 325
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WIFI_230"

    const-string v0, "0104"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 330
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 331
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult Called "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WifiSetupWizard"

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_0

    .line 333
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    const-string p1, "WifiSetupWizard"

    const-string v0, "onCreate"

    .line 158
    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_setupwizard_large:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    goto :goto_0

    .line 167
    :cond_0
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_setupwizard:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    .line 170
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->sec_wifi_suw_header:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 171
    sget v0, Lcom/android/settings/R$string;->wifi_suw_title:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v2, Lcom/android/settings/R$id;->wifi_secsetup_activity_fragment_layout:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 179
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    .line 180
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    sget v2, Lcom/android/settings/R$id;->wifi_secsetup_activity_manual_button:I

    .line 181
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    .line 184
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    sget v2, Lcom/android/settings/R$id;->wifi_secsetup_activity_mobile_data_button:I

    .line 185
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDataOnButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "isKmeSupported"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isKmeSupported:Z

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "is_network_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredByFrp:Z

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "is_network_required_by_kme"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredByKme:Z

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "useSprintNewSetupWizard"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsUsedSprintNewSetupWizard:Z

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isKmeSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isKmeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNetworkRequiredBySetupWizard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredByFrp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNetworkRequiredByKme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkRequiredByKme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUsedSprintNewSetupWizard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsUsedSprintNewSetupWizard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isBlockedSkipByRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    sget v0, Lcom/android/settings/R$string;->wifi_tss_guide_text_wifi_only:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/settings/R$string;->wifi_tss_guide_text:I

    .line 197
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setDescriptionText(I)V

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isDataReadyButOff()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDataOnButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->initButtonState()V

    .line 204
    :cond_3
    sget v0, Lcom/android/settings/R$string;->next_button_label:I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    .line 205
    sget v0, Lcom/android/settings/R$string;->wifi_skip_button:I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButton(ILandroid/view/View$OnClickListener;)V

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsRegistered:Z

    .line 214
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->DEV:Z

    if-eqz v1, :cond_4

    const-string v1, "wifi.test.off"

    .line 215
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDebugStartWithWifiOff:Z

    .line 218
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->setupInitialWifiState()Z

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->initButtonState(Z)V

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "If already network is available, do no skip it automatically"

    .line 222
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsAutoFinished:Z

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->checkAndShowNetworkRestrictionDialog()V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network required by Customer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByCustomer:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsRegistered:Z

    :cond_0
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mResultHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    .line 238
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->unregisterNetworkCallback()V

    .line 244
    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 249
    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onResume()V

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->registerNetworkCallback()V

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->updateSimState()V

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isBlockedSkipByRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->is523JigOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isNetworkAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->checkAndUpdateButton(Z)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mWifiStateButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->-$$Nest$mupdateGravityParam(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;)V

    .line 257
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mDataOnButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->-$$Nest$mupdateGravityParam(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 262
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string p0, "WIFI_230"

    .line 263
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 268
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public showWifiSetupFrpWarningDialog(Ljava/lang/String;)V
    .locals 2

    .line 853
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsDialogPopedUp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 856
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsDialogPopedUp:Z

    .line 858
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 859
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 860
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 861
    sget p1, Lcom/android/settings/R$string;->ok:I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
