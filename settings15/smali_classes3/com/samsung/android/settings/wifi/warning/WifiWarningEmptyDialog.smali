.class public final Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;
.super Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFriendlyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;->mFriendlyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setAlertDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f143637

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;->mFriendlyName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_1

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setNegativeButton()V
    .locals 0

    return-void
.end method
