.class public Lcom/android/settings/wifi/NetworkRequestDialogActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;


# instance fields
.field mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

.field public final mHandler:Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

.field mIsSpecifiedSsid:Z

.field public mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mShowingErrorDialog:Z

.field public mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    return-void
.end method


# virtual methods
.method public dismissDialogs()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method public final onAbort()V
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->ABORT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.android.settings.wifi.extra.REQUEST_IS_FOR_SINGLE_NETWORK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz p1, :cond_1

    const p1, 0x7f141952

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog$1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string v0, "NetworkRequestDialogActivity"

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onMatch(Ljava/util/List;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiUtils;->getWifiConfig(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    new-instance v0, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DIALOG_REQUEST_SSID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DIALOG_IS_TRYAGAIN"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string v0, "NetworkRequestDialogActivity"

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onMatch(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerNetworkRequestMatchCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    const/4 v0, 0x0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V

    :cond_1
    return-void
.end method

.method public final onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f14194b

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f14194c

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final showProgressDialog$1(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public final stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    iput-object v2, v1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->mRejectCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DIALOG_ERROR_TYPE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "NetworkRequestDialogActivity"

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    :cond_1
    :goto_0
    return-void
.end method
