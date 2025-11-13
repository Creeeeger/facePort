.class public Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;
.super Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

.field public mAllowCaptiveByKme:Z

.field public mCm:Landroid/net/ConnectivityManager;

.field public mConnectedListAdapterListener:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;

.field public mContext:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

.field public mDialog:Landroid/app/AlertDialog;

.field public mDialogCode:I

.field public mDialogLeftBtnText:Ljava/lang/String;

.field public mDialogMessage:Ljava/lang/String;

.field public mDialogRightBtnText:Ljava/lang/String;

.field public mDialogTitle:Ljava/lang/String;

.field public final mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

.field public mIsAllowBack:Z

.field public final mIsEsimSupported:Z

.field public mIsFRPLocked:Z

.field public mIsWifiConnected:Z

.field public mLastShownDialogCode:I

.field public mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mUseSoftNavigation:Z

.field public mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiSettings:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    iput-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SetupWizard_SupportEsimAsPrimary"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsEsimSupported:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mHandler:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;

    return-void
.end method


# virtual methods
.method public final forgetCurrentNetwork$1()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

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

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

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

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

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

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

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

.method public final onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsAllowBack:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mContext:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    const-class p1, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/persistentdata/PersistentDataBlockManager;

    const/4 v0, 0x0

    const-string v1, "WifiSetupWizardActivityVzw"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "Failed to get PersistentDataBlockManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsFRPLocked:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "mIsFRPLocked = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsFRPLocked:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0d0a9d

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setContentView(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContentsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f080aff

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v2, p1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v2, 0x7f1436d7

    invoke-virtual {p1, v2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    iget-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f07126c

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v3, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v3}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    const v3, 0x7f0a11a8

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/WifiSettings;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v4, "CscFeature_SetupWizard_SupportEsimAsPrimary"

    invoke-virtual {p1, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v4, 0x7f1436d6

    invoke-virtual {p1, v4}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    iget-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a0711

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a11ad

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;

    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "dialog_code"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogCode:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dialog_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogTitle:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dialog_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dialog_left_btn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogLeftBtnText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "dialog_right_btn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mDialogRightBtnText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "allowBack"

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsAllowBack:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "usesSoftNavigationKeys"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mUseSoftNavigation:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "allowCaptiveByKme"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mAllowCaptiveByKme:Z

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    const v5, 0x7f14197b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {v5, v1, p1, v3, v0}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    iput-object v5, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButton:Lcom/google/android/setupcompat/template/FooterButton;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonVisibility(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v5, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mMainActionButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v1, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v1

    const v5, 0x7f15093c

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTextAppearance(I)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setMainActionButtonVisibility(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mContext:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v1, v4, :cond_3

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f0a0f5d

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mContext:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v1, v6, v2, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;I)V

    iget-object v2, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mContext:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    const v6, 0x7f1436b1

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {v6, v2, v1, v0, v0}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    iput-object v6, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->setManualSetupButtonVisibility(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mManualSetupButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setTextAppearance(I)V

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mConnectedListAdapterListener:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$4;

    const-string/jumbo p1, "wifi.test.off"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "first_enter_wifisetupwizard"

    const/4 v2, -0x2

    invoke-static {p1, v1, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mReceiver:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$2;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->unregisterNetworkCallback$2()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->updateSimState$1()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->unregisterNetworkCallback$2()V

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final setFinishAction()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_wifi_connected"

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mIsWifiConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final unregisterNetworkCallback$2()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw$5;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiSetupWizardActivityVzw"

    const-string v0, "No need to unregister"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSimState$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivityVzw;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    :cond_0
    sget-object v0, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->semGetProfileClass()I

    goto :goto_0

    :cond_2
    return-void
.end method
