.class public final Lcom/samsung/android/settings/security/SecSimPersoDialog;
.super Landroid/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;


# instance fields
.field public mEditText:Landroid/widget/EditText;

.field public mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

.field public mMessageView:Landroid/widget/TextView;

.field public mProgressButton:Landroid/widget/ProgressBar;

.field public positiveButtonClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/security/SecIccLockSettings;

    const-class v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;

    return-void
.end method

.method public static isDialogOpen()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

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

.method public static releaseDialog()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "releaseDialog() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecIccLockSettings.SecSimPersoDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V
    .locals 10

    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->positiveButtonClicked:Z

    iput-object p1, v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v2, 0x7f0d08f5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v2, 0x102000b

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mMessageView:Landroid/widget/TextView;

    const v2, 0x7f0a05df

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x1020003

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/samsung/android/settings/security/SecSimPersoDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/security/SecSimPersoDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/security/SecSimPersoDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v5, 0x7f140d33

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v5, -0x1

    invoke-virtual {v0, v5, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v5, 0x7f140d30

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v5, -0x2

    invoke-virtual {v0, v5, p0, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sput-object v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    iget-boolean p0, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    const-string/jumbo v5, "show()"

    const-string v6, "SecIccLockSettings.SecSimPersoDialog"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "setDialogValues Called"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    iget v6, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const/4 v8, 0x1

    const v9, 0x7f140923

    if-eq v6, v8, :cond_5

    const/4 p0, 0x2

    const v8, 0x7f141539

    if-eq v6, p0, :cond_4

    const/4 p0, 0x3

    if-eq v6, p0, :cond_3

    if-eq v6, v7, :cond_1

    const-string p0, ""

    goto/16 :goto_2

    :cond_1
    const p0, 0x7f14153a

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const p0, 0x7f14153b

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "sim_perso_prefs"

    invoke-virtual {v3, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v6, "sim_perso_used"

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    const v3, 0x7f14153f

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_7
    const v3, 0x7f14304b

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz p0, :cond_8

    const p0, 0x7f141538

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    const p0, 0x7f143049

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object p0, v3

    :goto_2
    iget-object p1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const-string v0, "SecIccLockSettings.SecSimPersoDialog"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    invoke-super {p0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method

.method public final dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->positiveButtonClicked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->positiveButtonClicked:Z

    return-void

    :cond_0
    const-string v0, "SecIccLockSettings.SecSimPersoDialog"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public final getProgressDialog(Landroid/widget/Button;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mProgressButton:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mProgressButton:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mProgressButton:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mProgressButton:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mProgressButton:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->positiveButtonClicked:Z

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const-string/jumbo p1, "onPinEntered, positiveResult = "

    const-string v0, "SecIccLockSettings.SecSimPersoDialog"

    invoke-static {p2, p1, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/16 v1, 0x11a3

    goto :goto_0

    :cond_0
    const/16 v1, 0x1199

    :goto_0
    const/16 v2, 0x38

    invoke-static {v2, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object v3, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object v2, v2, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget v2, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eq v2, v3, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->getProgressDialog(Landroid/widget/Button;)V

    if-ne p2, p1, :cond_4

    sget-object p1, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object v7, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    new-instance p1, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeSimPersoPin;

    iget p2, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeSimPersoPin;-><init>(Lcom/samsung/android/settings/security/SecIccLockManager;ILjava/lang/String;Ljava/lang/String;)V

    new-array p0, v5, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object v7, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    :cond_6
    iget-object p1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    :cond_7
    iget-object p1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    iput-object p1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object v7, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->getProgressDialog(Landroid/widget/Button;)V

    if-ne p2, p1, :cond_9

    sget-object p1, Lcom/samsung/android/settings/security/SecSimPersoDialog;->sSimPersoDialog:Lcom/samsung/android/settings/security/SecSimPersoDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/samsung/android/settings/security/SecIccLockManager$SetSimPersoEnabled;

    iget p2, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/samsung/android/settings/security/SecIccLockManager$SetSimPersoEnabled;-><init>(Lcom/samsung/android/settings/security/SecIccLockManager;IZLjava/lang/String;)V

    new-array p0, v5, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f141540

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object p1, p2, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPersoDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    const-string p0, "incorrect input"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimPersoDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
