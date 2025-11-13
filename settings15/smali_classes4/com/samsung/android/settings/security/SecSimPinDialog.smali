.class public final Lcom/samsung/android/settings/security/SecSimPinDialog;
.super Landroid/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;


# instance fields
.field public mEditText:Landroid/widget/EditText;

.field public mErrorTextView:Landroid/widget/TextView;

.field public mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

.field public mMessageView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/security/SecIccLockSettings;

    const-class v0, Lcom/samsung/android/settings/security/SecSimPinDialog;

    return-void
.end method

.method public static releaseDialog()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "releaseDialog() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecIccLockSettings.SecSimPinDialog"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V
    .locals 9

    const-string v0, "SecIccLockSettings.SecSimPinDialog"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/security/SecSimPinDialog;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0d09b0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v1, 0x102000b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mMessageView:Landroid/widget/TextView;

    const v1, 0x7f0a05df

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mErrorTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x1020003

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/samsung/android/settings/security/SecSimPinDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/security/SecSimPinDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/security/SecSimPinDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f140d33

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f140d30

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sput-object v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    iget-boolean p0, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "SecIccLockSettings.SecIccLockManager"

    const-string v4, "getRetryCount = "

    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    const-string v6, "UNKNOWN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v5, "isemtelephony"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v5

    if-eqz v5, :cond_2

    iget v6, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/ISemTelephony;->getSimPinRetryForSubscriber(I)I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  SubId = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move v5, v7

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "getIccLockRetryNumber : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v7

    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 p1, 0x1

    if-gt v5, p1, :cond_4

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f1412d3

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f1412d4

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    iget-object v5, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget v5, v5, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const v6, 0x7f142c20

    const-string v8, "\n"

    if-eq v5, p1, :cond_9

    const/4 p0, 0x2

    const p1, 0x7f142c55

    if-eq v5, p0, :cond_8

    const/4 p0, 0x3

    if-eq v5, p0, :cond_7

    if-eq v5, v3, :cond_5

    const-string p0, ""

    goto/16 :goto_6

    :cond_5
    const p0, 0x7f142c62

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object v1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_6
    iget-object p1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_7
    const p0, 0x7f142c1d

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_a

    const p0, 0x7f142c19

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_a
    const p0, 0x7f142c15

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object p0, p1

    :goto_6
    iget-object p1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p1, v8, p0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_b
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p0

    iget-object p1, v0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const-string v0, "SecIccLockSettings.SecSimPinDialog"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method

.method public final dismiss()V
    .locals 2

    const-string v0, "SecIccLockSettings.SecSimPinDialog"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPinEntered, positiveResult = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecIccLockSettings.SecSimPinDialog"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/16 p1, 0x11a3

    goto :goto_0

    :cond_0
    const/16 p1, 0x1199

    :goto_0
    const/16 v1, 0x38

    invoke-static {v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object p2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x4

    if-lt p2, v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x8

    if-le p1, p2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget p2, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq p2, v3, :cond_6

    if-eq p2, v4, :cond_5

    if-eq p2, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    new-instance p1, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;

    iget-object p2, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;-><init>(Lcom/samsung/android/settings/security/SecIccLockManager;Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPinDialog;->releaseDialog()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object v0, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    :cond_5
    iget-object p2, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    iput-object p2, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    :cond_6
    iget-object p2, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    iput-object p2, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object v0, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    new-instance p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;

    iget-boolean p2, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    iget-object v0, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;-><init>(Lcom/samsung/android/settings/security/SecIccLockManager;ZLjava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f142bfd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object p1, p2, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    const-string p0, "incorrect input"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPinDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
