.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FingerprintDeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mAnchorType:I

.field private mAnchorView:Landroid/view/View;

.field private mButton:I

.field mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

.field private mMsg:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Y6hFExAYidPXa1srV6qOE4DPX8c(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    const-string p0, "FpstFingerprintDeleteDialog"

    const-string v0, "FingerprintDeleteDialog created illegally"

    .line 49
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    .line 39
    iput-object p4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;)V
    .locals 1

    .line 95
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 96
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_biometrics_dialog_remove_btn_color:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public cancelDeleteDialog()V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_2

    .line 107
    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_2

    .line 113
    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onNegativeClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FpstFingerprintDeleteDialog"

    const-string v0, "onCreate"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 71
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-nez p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 79
    sget p1, Lcom/android/settings/R$string;->common_remove:I

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    .line 82
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mButton:I

    .line 84
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    .line 85
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAnchorView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAnchorType:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0

    :cond_4
    :goto_0
    const-string p1, "FpstFingerprintDeleteDialog"

    const-string v0, "onCreateDialog illegalCreated"

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "FpstFingerprintDeleteDialog"

    const-string v1, "onDismiss"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FpstFingerprintDeleteDialog"

    const-string v1, "onPause"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FpstFingerprintDeleteDialog"

    const-string v1, "onResume"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onResumeDialog()V

    :cond_0
    return-void
.end method
