.class public Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PrivacyAlertProceedDialogActivity.java"


# instance fields
.field mProceedAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 8

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_privacy_alert_confirm_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    sget v1, Lcom/android/settings/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_chameleon_brandalpha"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    sget v3, Lcom/android/settings/R$string;->privacy_alert_default_brandalpha:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_UseChameleon"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "PrivacyAlertProceedDialogActivity"

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    const-string v4, "null"

    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Samsung"

    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Chameleon"

    .line 87
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "db_chameleon_carrierhomepage"

    invoke-static {v3, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "legal message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    :cond_1
    sget v3, Lcom/android/settings/R$string;->privacy_alert_default_homepage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    :cond_2
    sget v4, Lcom/android/settings/R$string;->privacy_alert_chameleon_message:I

    invoke-virtual {p0, v4}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 89
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use default legal message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget v2, Lcom/android/settings/R$string;->privacy_alert_xas_message:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private showProceedDialog()V
    .locals 3

    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;->getContentView()Landroid/view/View;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 54
    sget v1, Lcom/android/settings/R$string;->privacy_alert:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 55
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity$1;-><init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity$2;-><init>(Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;->mProceedAlertDialog:Landroid/app/AlertDialog;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyAlertProceedDialogActivity;->showProceedDialog()V

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method
