.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mButton:I

.field public mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

.field public mMsg:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    const-string p0, "FpstFingerprintDeleteDialog"

    const-string v0, "FingerprintDeleteDialog created illegally"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onNegativeClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FpstFingerprintDeleteDialog"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7f1409d2

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f1409b6

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0

    :cond_3
    :goto_0
    const-string p1, "FpstFingerprintDeleteDialog"

    const-string/jumbo v0, "onCreateDialog illegalCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    const-string v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method
