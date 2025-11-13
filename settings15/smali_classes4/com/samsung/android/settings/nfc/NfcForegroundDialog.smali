.class public Lcom/samsung/android/settings/nfc/NfcForegroundDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final DBG:Z


# instance fields
.field public mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const-string v0, "NfcForegroundDialog"

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "Illegal value = "

    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v4, :cond_0

    iget-object v0, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v4, 0x20

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x28

    if-le v1, v4, :cond_1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f1409b6

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    const v2, 0x7f1409d0

    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->setFinishOnTouchOutside(Z)V

    if-eqz v0, :cond_3

    const v0, 0x7f1419b4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    const v0, 0x7f1419b5

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->isForegroundMode()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz p0, :cond_5

    const-string p0, "NfcForegroundDialog"

    const-string/jumbo p1, "setupAlert()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcForegroundDialog;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "NfcForegroundDialog"

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
