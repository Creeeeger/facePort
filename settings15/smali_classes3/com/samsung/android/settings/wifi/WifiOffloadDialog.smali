.class public Lcom/samsung/android/settings/wifi/WifiOffloadDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# instance fields
.field public fragment:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

.field public mCm:Landroid/net/ConnectivityManager;

.field public mContext:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

.field public mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public static -$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V
    .locals 2

    const-string v0, "WifiOffloadDialog"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p1, :cond_0

    const-string p1, "Start 12 hours timer"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->startTimerForWifiOffload()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "No need to unregister"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mCm:Landroid/net/ConnectivityManager;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "WifiOffloadDialog"

    const-string v0, "No need to unregister"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mNetworkCallback:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$2;

    invoke-virtual {v1, p1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->fragment:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->fragment:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;)V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string/jumbo v0, "wifioffloaddialog.fragment"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->mContext:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method
