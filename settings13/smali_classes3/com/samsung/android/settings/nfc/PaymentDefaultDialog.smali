.class public final Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final DBG:Z


# instance fields
.field private mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

.field private mIsValidityVerifiedIntentReceived:Z

.field private mNeedDialogDismiss:Z

.field private mNewDefault:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$monPaymentDefaultValidityVerified(Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->onPaymentDefaultValidityVerified(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNeedDialogDismiss:Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mIsValidityVerifiedIntentReceived:Z

    .line 63
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private buildDialog(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 6

    const-string v0, "PaymentDefaultDialog"

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "payment"

    .line 164
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t support defaults for category "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 173
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p2

    .line 174
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move-object v3, v2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 176
    iget-object v5, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    .line 177
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne v5, p3, :cond_3

    move-object v2, v4

    .line 180
    :cond_3
    iget-boolean v5, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne v5, p3, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_4
    const-string p2, "Component "

    if-nez v2, :cond_5

    .line 186
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a registered payment service."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 191
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 192
    iget-object v5, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v4, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->userId:I

    if-ne v4, p3, :cond_6

    .line 194
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already default."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 198
    :cond_6
    new-instance p2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;

    invoke-direct {p2}, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;

    .line 199
    iput-object p1, p2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->componentName:Landroid/content/ComponentName;

    .line 200
    iput p3, p2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->userId:I

    .line 203
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 p2, 0x1

    if-nez v3, :cond_7

    .line 205
    sget p3, Lcom/android/settings/R$string;->nfc_payment_set_default:I

    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v0, p2, [Ljava/lang/Object;

    .line 206
    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 207
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 206
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 208
    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 209
    sget p3, Lcom/android/settings/R$string;->nfc_payment_set_default_label:I

    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 210
    sget p3, Lcom/android/settings/R$string;->common_ok:I

    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 212
    :cond_7
    sget p3, Lcom/android/settings/R$string;->nfc_payment_set_default_instead_of:I

    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 213
    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 214
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, v3, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 215
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 213
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 216
    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 217
    sget p3, Lcom/android/settings/R$string;->nfc_payment_replace_default_label:I

    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 218
    sget p3, Lcom/android/settings/R$string;->nfc_payment_replace:I

    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 220
    :goto_1
    sget p3, Lcom/android/settings/R$string;->no:I

    invoke-virtual {p0, p3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 221
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 222
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return p2

    :cond_8
    :goto_2
    const-string p0, "Component or category are null"

    .line 160
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private onPaymentDefaultValidityVerified(Landroid/content/Intent;)V
    .locals 5

    .line 241
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    const-string v1, "PaymentDefaultDialog"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanRKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "componentName"

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v2, "isValid"

    const/4 v3, 0x0

    .line 247
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "onPaymentDefaultValidityVerified(): service=%s, isValid=%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mIsValidityVerifiedIntentReceived:Z

    if-eqz v0, :cond_1

    const-string p0, "the intent is already received, ignoring"

    .line 251
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mIsValidityVerifiedIntentReceived:Z

    if-nez p1, :cond_2

    .line 258
    new-instance p1, Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->nfc_payment_settings_default_offhost_failed:I

    .line 259
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$2;-><init>(Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;)V

    .line 260
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 270
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 271
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->dismiss()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "onPaymentDefaultValidityVerified(): There\'s nothing to do for this product."

    .line 242
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0xa

    const/16 v0, 0x20

    .line 229
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x28

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 154
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;

    iget-object v1, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->componentName:Landroid/content/ComponentName;

    iget v0, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentInfo;->userId:I

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;I)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 83
    new-instance p1, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "component"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v1, "category"

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.USER"

    .line 88
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-nez p1, :cond_0

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    :goto_0
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 106
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->buildDialog(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
