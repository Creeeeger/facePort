.class public final Lcom/android/settings/wifi/WifiNoInternetDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiNoInternetDialog.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mIsResultReported:Z

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

.field private mNetworkName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mWifiNoInternetDialog:Landroid/app/AlertDialog;

.field mWifiNoInternetDialogListener:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAction(Lcom/android/settings/wifi/WifiNoInternetDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCM(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemWifiManager(Lcom/android/settings/wifi/WifiNoInternetDialog;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNoInternetDialog(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mIsResultReported:Z

    .line 83
    new-instance v0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiNoInternetDialog$1;-><init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 277
    new-instance v0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiNoInternetDialog$4;-><init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialogListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Lcom/android/internal/app/AlertController$AlertParams;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    return-object p0
.end method

.method private createDialog()V
    .locals 15

    .line 199
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "SalesCode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vzw"

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$layout;->sec_wifi_sns_exception_dialog_vzw:I

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$layout;->sec_wifi_sns_exception_dialog:I

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 209
    :goto_0
    sget v2, Lcom/android/settings/R$id;->wifi_sns_exception_dialog_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    sget v3, Lcom/android/settings/R$id;->wifi_sns_exception_dialog_warning:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 211
    sget v4, Lcom/android/settings/R$id;->connect_btn:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 212
    sget v5, Lcom/android/settings/R$id;->switch_btn:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 213
    sget v6, Lcom/android/settings/R$id;->keep_btn:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 215
    iget-object v7, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_alert_with_no_sim:I

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v13, 0x1

    aput-object v11, v10, v13

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 216
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->isMobileDataAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 217
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    const-string v10, "\n\n"

    if-eqz v7, :cond_1

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_alert_tablet:I

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v14, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    aput-object v14, v9, v12

    aput-object v14, v9, v13

    invoke-virtual {v8, v11, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_alert_detail_intelligent:I

    .line 219
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 221
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v14, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    aput-object v14, v9, v12

    aput-object v14, v9, v13

    invoke-virtual {v11, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_alert_detail_intelligent:I

    .line 222
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    :cond_2
    :goto_1
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_warning_detail:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v13, v12

    :goto_2
    if-eqz v13, :cond_4

    const/4 v2, 0x4

    .line 231
    iput v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mDialogTheme:I

    goto :goto_3

    :cond_4
    const/4 v2, 0x5

    .line 233
    iput v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mDialogTheme:I

    .line 236
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mDialogTheme:I

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 237
    sget v3, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_title:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_5

    .line 240
    sget v0, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_connect_once:I

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 241
    sget v0, Lcom/android/settings/R$string;->wifi_sns_exception_allow_switch:I

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(I)V

    .line 242
    sget v0, Lcom/android/settings/R$string;->wifi_sns_exception_stay_connected:I

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 244
    :cond_5
    sget v0, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_connect_once:I

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 245
    sget v0, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_disconnect:I

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(I)V

    .line 246
    sget v0, Lcom/android/settings/R$string;->wifi_switch_to_mobile_data_exception_always_connect:I

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    .line 248
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialogListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 253
    new-instance v0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiNoInternetDialog$3;-><init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 271
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 272
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_6
    return-void
.end method

.method private isKnownAction(Landroid/content/Intent;)Z
    .locals 2

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.net.action.PROMPT_UNVALIDATED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.net.action.PROMPT_LOST_VALIDATION"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.net.action.PROMPT_PARTIAL_CONNECTIVITY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isMobileDataAvailable()Z
    .locals 1

    .line 348
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isNetworkRequired()Z
    .locals 2

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 415
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    .line 416
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->isNetworkRequired()Z

    move-result p0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNetworkRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiNoInternetDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isSkipDialogInSetupWizard(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/16 v0, 0x18

    .line 193
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isFrpChallengeRequired(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "persist.sys.setupwizard"

    const-string p1, "NOTSET"

    .line 195
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FINISH"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCurrentSemWifiConfiguration()Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 377
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 381
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 383
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 384
    iget-object v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method public getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 360
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 361
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 364
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 365
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public isSetupwizardFinished()Z
    .locals 1

    const-string/jumbo p0, "persist.sys.setupwizard"

    const-string v0, "NOTSET"

    .line 421
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FINISH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.net.extra.NETWORK"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    .line 115
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->isNetworkRequired()Z

    move-result v0

    const-string v1, "WifiNoInternetDialog"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->isSetupwizardFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "FRP activated"

    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 120
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->isKnownAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", exiting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    if-nez v0, :cond_2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t determine network from \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' , exiting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 130
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string p1, "connectivity"

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    .line 136
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/android/settings/wifi/WifiNoInternetDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiNoInternetDialog$2;-><init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 156
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 160
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_3

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    .line 168
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->isSkipDialogInSetupWizard(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string p1, "Skip NoInternet dialog in case of partial connectivity during setup wizard"

    .line 169
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ConnectivityManager;->setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V

    .line 171
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 176
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 178
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 181
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 182
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 183
    sget p1, Lcom/android/settings/R$style;->SettingsTheme:I

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->createDialog()V

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 188
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 161
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not connected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 344
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 3

    .line 330
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->sendResultToWCM(ZZI)V

    .line 333
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public sendResultToWCM(ZZI)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, p3}, Lcom/samsung/android/wifi/SemWifiManager;->setKeepConnectionBigData(I)V

    if-eqz p3, :cond_0

    .line 405
    iget-object p3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setKeepConnection(ZZ)V

    return-void
.end method
