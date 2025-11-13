.class public final Lcom/android/settings/TrustedCredentialsDialogBuilder;
.super Landroidx/appcompat/app/AlertDialog$Builder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    const p1, 0x1040eb8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    iget-object p1, v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    const p1, 0x7f142f9e

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x104000a

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object v0
.end method
