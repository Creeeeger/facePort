.class public Lcom/android/settings/development/RebootConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final mCancelButtonId:I

.field public final mHost:Lcom/android/settings/development/RebootConfirmationDialogHost;

.field public final mMessageId:I


# direct methods
.method public constructor <init>(IILcom/android/settings/development/RebootConfirmationDialogHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    iput p1, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mMessageId:I

    iput p2, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mCancelButtonId:I

    iput-object p3, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mHost:Lcom/android/settings/development/RebootConfirmationDialogHost;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77a

    return p0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mHost:Lcom/android/settings/development/RebootConfirmationDialogHost;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/development/RebootConfirmationDialogHost;->onRebootConfirmed(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mHost:Lcom/android/settings/development/RebootConfirmationDialogHost;

    invoke-interface {p0}, Lcom/android/settings/development/RebootConfirmationDialogHost;->onRebootCancelled()V

    :goto_0
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mMessageId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const v0, 0x7f141e1a

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget v0, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mCancelButtonId:I

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mHost:Lcom/android/settings/development/RebootConfirmationDialogHost;

    invoke-interface {p0}, Lcom/android/settings/development/RebootConfirmationDialogHost;->onRebootDialogDismissed()V

    return-void
.end method
