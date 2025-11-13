.class public Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;
.super Ljava/lang/Object;
.source "WifiNetworkRequiredChecker.java"


# instance fields
.field private final isNetworkRequiredByFrp:Z

.field private final mActivity:Landroid/app/Activity;

.field private mFlagWarningDialog:Z

.field private final mIsNetworkRequiredByKme:Z


# direct methods
.method public static synthetic $r8$lambda$6Xj-2q_EnyYPV3ftVvTrNy45PM8(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->lambda$showOnceWarningDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$__ev7dtQCs3XfliNQrE5EPkMw0E(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->lambda$makeCommonAlertDialogBuilder$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rt7ozk1oGzd2NtNrIJk5wWjknVU(Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->lambda$makeCommonAlertDialogBuilder$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mFlagWarningDialog:Z

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_network_required_by_kme"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsNetworkRequiredByKme:Z

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "is_network_required"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->isNetworkRequiredByFrp:Z

    return-void
.end method

.method private synthetic lambda$makeCommonAlertDialogBuilder$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "WifiSetupWizard"

    const-string p2, "Wi-Fi setup skipped"

    .line 82
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    instance-of p1, p0, Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;

    if-eqz p1, :cond_0

    .line 84
    check-cast p0, Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/IWifiSetupWizardButtonAction;->mainAction(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$makeCommonAlertDialogBuilder$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "WifiSetupWizard"

    const-string p1, "Return to Wi-Fi setup"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$showOnceWarningDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "WifiSetupWizard"

    const-string p1, "User confirm KME warning"

    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeCommonAlertDialogBuilder(Z)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 5

    .line 71
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    sget v1, Lcom/android/settings/R$string;->wifi_skip_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_header:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_connect_internet:I

    .line 75
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_software_update:I

    .line 76
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_devices_protection:I

    .line 77
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz p1, :cond_0

    .line 80
    sget p1, Lcom/android/settings/R$string;->wifi_skip_button:I

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wifi_dont_skip:I

    new-instance p1, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object v0
.end method


# virtual methods
.method public isNetworkRequired()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mIsNetworkRequiredByKme:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->isNetworkRequiredByFrp:Z

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

.method public showEsimNonDetectedSkipDialog()V
    .locals 5

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->makeCommonAlertDialogBuilder(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_header:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_setup_esim:I

    .line 62
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_connect_internet:I

    .line 63
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v4, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_software_update:I

    .line 64
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/android/settings/R$string;->wifi_and_mobile_skipped_message_devices_protection:I

    .line 65
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showOnceWarningDialog()V
    .locals 8

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mFlagWarningDialog:Z

    const-string v1, "WifiSetupWizard"

    if-eqz v0, :cond_0

    const-string p0, "already showing KME dialog"

    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->isNetworkRequiredByFrp:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/android/settings/R$string;->wifi_frp_warning:I

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/android/settings/R$string;->knox_enforce_wifi:I

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Knox Cloud Service"

    aput-object v7, v6, v3

    invoke-virtual {v2, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 99
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    sget v2, Lcom/android/settings/R$string;->common_ok:I

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 106
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mFlagWarningDialog:Z

    const-string p0, "show KME popup"

    .line 107
    invoke-static {v1, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showSkipBlockedDialog()V
    .locals 2

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->makeCommonAlertDialogBuilder(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 53
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$string;->wifi_tss_guide_text_wifi_only:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$string;->wifi_tss_guide_text:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 53
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showSkipDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->makeCommonAlertDialogBuilder(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
