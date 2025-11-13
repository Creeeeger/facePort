.class public Lcom/android/settings/development/RebootConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RebootConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mHost:Lcom/android/settings/development/RebootConfirmationDialogHost;

.field private final mMessageId:I


# direct methods
.method private constructor <init>(ILcom/android/settings/development/RebootConfirmationDialogHost;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mMessageId:I

    .line 56
    iput-object p2, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mHost:Lcom/android/settings/development/RebootConfirmationDialogHost;

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;ILcom/android/settings/development/RebootConfirmationDialogHost;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "FreeformPrefRebootDlg"

    .line 47
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/android/settings/development/RebootConfirmationDialogFragment;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/development/RebootConfirmationDialogFragment;-><init>(ILcom/android/settings/development/RebootConfirmationDialogHost;)V

    .line 50
    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77a

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mHost:Lcom/android/settings/development/RebootConfirmationDialogHost;

    invoke-interface {p0}, Lcom/android/settings/development/RebootConfirmationDialogHost;->onRebootConfirmed()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 66
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/settings/development/RebootConfirmationDialogFragment;->mMessageId:I

    .line 67
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->reboot_dialog_reboot_now:I

    .line 68
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->reboot_dialog_reboot_later:I

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
