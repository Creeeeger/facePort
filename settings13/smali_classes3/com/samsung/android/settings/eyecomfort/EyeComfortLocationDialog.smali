.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortLocationDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "EyeComfortLocationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const p2, 0x10302d1

    goto :goto_1

    :cond_1
    const p2, 0x10302d2

    .line 37
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x3

    const-string v0, "location_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "blue_light_filter"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 p1, 0x2e

    const/16 p2, 0x107d

    const-wide/16 v0, 0x1

    .line 65
    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 66
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 67
    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.bluelightfilter"

    const-string v1, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 p2, 0x18

    const-string v0, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    .line 68
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "layout_inflater"

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 46
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 48
    sget v0, Lcom/android/settings/R$string;->sec_blue_light_filter_dlg_turn_on_location_title:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 49
    sget v0, Lcom/android/settings/R$string;->sec_blue_light_filter_dlg_turn_on_location:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_dlg_turn_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 51
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 53
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method
