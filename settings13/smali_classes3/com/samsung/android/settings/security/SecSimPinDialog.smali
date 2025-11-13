.class public Lcom/samsung/android/settings/security/SecSimPinDialog;
.super Landroid/app/AlertDialog;
.source "SecSimPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$l6QYRpfg1lxnfncZXLlXI_l3xho(Lcom/samsung/android/settings/security/SecSimPinDialog;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/security/SecSimPinDialog;->lambda$new$0(Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/settings/security/SecSimPinDialog;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 52
    sget p2, Lcom/android/settings/R$layout;->sec_sim_pin_dialog_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000b

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mMessageView:Landroid/widget/TextView;

    const p2, 0x1020003

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    .line 55
    new-instance v0, Lcom/samsung/android/settings/security/SecSimPinDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/security/SecSimPinDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    invoke-virtual {p0, p2, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static getDialog()Landroid/app/AlertDialog;
    .locals 1

    .line 229
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    return-object v0
.end method

.method public static getEditText()Ljava/lang/String;
    .locals 1

    .line 224
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDialogOpen()Z
    .locals 1

    .line 212
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x8

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static releaseDialog()V
    .locals 3

    .line 216
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseDialog() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPinDialog;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 220
    sput-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    return-void
.end method

.method static resetDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    sput-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    return-void
.end method

.method private setDialogValues(Z)V
    .locals 7

    .line 154
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->getIccLockRetryNumber()I

    move-result v1

    .line 158
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 160
    iget-object v2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/security/SecIccLockManager;->getPin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v4}, Lcom/samsung/android/settings/security/SecIccLockManager;->getPin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-gt v1, v4, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    sget v5, Lcom/android/settings/R$string;->keyguard_password_attempt_count_pin_code:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    .line 168
    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 165
    :cond_2
    :goto_0
    sget v5, Lcom/android/settings/R$string;->keyguard_password_attempts_count_pin_code:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    .line 165
    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 172
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/security/SecIccLockManager;->getIccLockMode()I

    move-result v2

    const-string v5, "\n"

    if-eq v2, v4, :cond_6

    const/4 p1, 0x2

    if-eq v2, p1, :cond_5

    const/4 p1, 0x3

    if-eq v2, p1, :cond_4

    if-eq v2, v3, :cond_3

    const-string p1, ""

    goto/16 :goto_3

    .line 188
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->sim_reenter_new:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    sget v1, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 184
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->sim_enter_new:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    sget v1, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 180
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/settings/R$string;->sim_enter_old:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    sget v1, Lcom/android/settings/R$string;->sim_change_pin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 174
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/settings/R$string;->sim_enter_old:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_7

    .line 176
    sget p1, Lcom/android/settings/R$string;->sim_enable_sim_lock:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 177
    :cond_7
    sget p1, Lcom/android/settings/R$string;->sim_disable_sim_lock:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 175
    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object p1, v1

    .line 192
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    :cond_8
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SecSimPinDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    .line 199
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V
    .locals 2

    .line 203
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->TAG:Ljava/lang/String;

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPinDialog;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->dismiss()V

    .line 207
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/security/SecSimPinDialog;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/security/SecSimPinDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    sput-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    .line 208
    invoke-virtual {p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->getIccToState()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 72
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->TAG:Ljava/lang/String;

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    .line 74
    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 79
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x0

    .line 81
    sput-object p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 91
    sget-object p1, Lcom/samsung/android/settings/security/SecSimPinDialog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPinEntered, positiveResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x11a3

    goto :goto_0

    :cond_0
    const/16 v0, 0x1199

    :goto_0
    const/16 v1, 0x38

    .line 92
    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    return-void

    .line 101
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->setPin(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p2}, Lcom/samsung/android/settings/security/SecIccLockManager;->getPin()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/security/SecSimPinDialog;->reasonablePin(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 105
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->sim_bad_pin_4to8:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/security/SecIccLockManager;->setErrorMessage(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p2, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    const-string p0, "incorrect input"

    .line 108
    invoke-static {p1, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->getIccLockMode()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, p2, :cond_6

    const/4 p2, 0x4

    if-eq p1, v0, :cond_5

    if-eq p1, p2, :cond_3

    goto/16 :goto_1

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->getNewPin()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p2}, Lcom/samsung/android/settings/security/SecIccLockManager;->getPin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setErrorMessage(Ljava/lang/String;)V

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->tryChangePin()V

    goto :goto_1

    .line 134
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/android/settings/R$string;->sim_pins_dont_match:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/security/SecIccLockManager;->setErrorMessage(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setPin(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    .line 124
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->getPin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->setNewPin(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setPin(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    .line 117
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->getPin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/security/SecIccLockManager;->setOldPin(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setErrorMessage(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setPin(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    .line 114
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->tryChangeIccLockState()V

    :goto_1
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/security/SecSimPinDialog;->setDialogValues(Z)V

    .line 67
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
