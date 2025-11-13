.class public Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static showErrorDialog(Landroidx/fragment/app/FragmentActivity;IZ)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentManager;->mDestroyed:Z

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const v1, 0x7f1429ea

    const/4 v2, 0x2

    const/16 v3, 0x12

    const/4 v4, 0x3

    if-eqz p2, :cond_5

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_4

    const v1, 0x7f1429f5

    goto :goto_0

    :cond_2
    const v1, 0x7f1429f7

    goto :goto_0

    :cond_3
    const v1, 0x7f1429fa

    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_2

    :cond_5
    if-eq p1, v2, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_8

    const v1, 0x7f1429f4

    goto :goto_1

    :cond_6
    const v1, 0x7f1429f6

    goto :goto_1

    :cond_7
    const v1, 0x7f1429f9

    :cond_8
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_2
    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    const v1, 0x7f1429f8

    goto :goto_3

    :cond_9
    const v1, 0x7f1429eb

    goto :goto_3

    :cond_a
    const v1, 0x7f1429f3

    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-direct {v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "error_msg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p2, "error_title"

    invoke-virtual {v2, p2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "error_id"

    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-class p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x239

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iget-object v2, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iput-boolean v5, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;Z)V

    const v1, 0x7f1429ef

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    if-eqz v4, :cond_2

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;I)V

    const v2, 0x7f1429f0

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;I)V

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method
