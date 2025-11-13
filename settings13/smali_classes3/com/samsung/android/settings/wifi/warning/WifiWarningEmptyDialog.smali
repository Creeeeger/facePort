.class public Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;
.super Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
.source "WifiWarningEmptyDialog.java"


# instance fields
.field private final mFriendlyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    .line 31
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;->mFriendlyName:Ljava/lang/String;

    return-void
.end method

.method private showDialogWithFriendlyName()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_progress_updating:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;->mFriendlyName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->showProgressDialog(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected getClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected neverShowAgainVzwAlertDialog()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected setAlertDialog()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;->showDialogWithFriendlyName()V

    return-void
.end method

.method protected setAlertDialogForVzw()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;->showDialogWithFriendlyName()V

    return-void
.end method

.method protected setNegativeButton()V
    .locals 0

    return-void
.end method

.method protected setShowAgainOptionForVzw()V
    .locals 0

    return-void
.end method
