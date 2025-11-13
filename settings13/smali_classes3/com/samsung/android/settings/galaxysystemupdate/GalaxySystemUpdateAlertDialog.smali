.class public Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateAlertDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "GalaxySystemUpdateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private pressOK()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private setSystemUpdateAgreement()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->getNotificationFlag(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    invoke-static {p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->setNotificationFlag(Landroid/content/Context;Z)Z

    .line 79
    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->getGalaxySystemUpdateValue(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->setGalaxySystemUpdateValue(Landroid/content/Context;Z)Z

    .line 80
    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->getWifiOnlyValue(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateSettings;->setWifiOnlyValue(Landroid/content/Context;Z)Z

    :cond_0
    return-void
.end method

.method private updateUi()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v1, Lcom/android/settings/R$string;->galaxy_system_update:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 64
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v1, Lcom/android/settings/R$string;->galaxy_system_update_alert_message:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 65
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v1, Lcom/android/settings/R$string;->common_ok:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateAlertDialog;->pressOK()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    .line 27
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateAlertDialog;->updateUi()V

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateAlertDialog;->setSystemUpdateAgreement()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 45
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
