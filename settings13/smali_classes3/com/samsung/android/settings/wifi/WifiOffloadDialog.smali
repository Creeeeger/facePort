.class public Lcom/samsung/android/settings/wifi/WifiOffloadDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WifiOffloadDialog.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# instance fields
.field private fragment:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPackageName:Ljava/lang/String;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method static bridge synthetic -$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->doFinish(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private doFinish(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p1, :cond_0

    const-string p1, "WifiOffloadDialog"

    const-string v0, "Start 12 hours timer"

    .line 109
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->startTimerForWifiOffload()V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->unregisterNetworkCallback()V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mActivityMgr:Landroid/app/ActivityManager;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    const-string v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mCm:Landroid/net/ConnectivityManager;

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->registerNetworkCallback()V

    .line 58
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->fragment:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->fragment:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->setWifiDialogListener(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$WifiDialogListener;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->fragment:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "wifioffloaddialog.fragment"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private registerNetworkCallback()V
    .locals 2

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->unregisterNetworkCallback()V

    .line 128
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 130
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WifiOffloadDialog"

    const-string v0, "No need to unregister"

    .line 145
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_PACKAGE_NAME"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mPackageName:Ljava/lang/String;

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->initialize()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method
