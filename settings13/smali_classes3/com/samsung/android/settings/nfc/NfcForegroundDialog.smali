.class public Lcom/samsung/android/settings/nfc/NfcForegroundDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "NfcForegroundDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0xa

    const/16 v0, 0x20

    .line 89
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    const-string v0, "NfcForegroundDialog"

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 82
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal value = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    goto :goto_0

    .line 79
    :cond_1
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 27
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance p1, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v2, :cond_0

    .line 36
    iget-boolean v3, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v3, :cond_0

    .line 38
    iget-object v0, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 44
    sget v2, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 45
    sget v2, Lcom/android/settings/R$string;->common_ok:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 47
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setFinishOnTouchOutside(Z)V

    if-eqz v0, :cond_2

    .line 53
    sget v0, Lcom/android/settings/R$string;->nfc_payment_dialog_favor_open:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .line 55
    :cond_2
    sget v0, Lcom/android/settings/R$string;->nfc_payment_dialog_favor_open_default_unknown:I

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 58
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 62
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz p0, :cond_4

    const-string p0, "NfcForegroundDialog"

    const-string p1, "setupAlert()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 69
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "NfcForegroundDialog"

    const-string v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
