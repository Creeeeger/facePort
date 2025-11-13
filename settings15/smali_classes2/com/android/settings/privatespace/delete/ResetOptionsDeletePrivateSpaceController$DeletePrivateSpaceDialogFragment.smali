.class public Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeletePrivateSpaceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x81c

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f141d40

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v1, 0x7f141ee0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v1, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment;Landroid/content/Context;I)V

    const v2, 0x7f141d3e

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/delete/ResetOptionsDeletePrivateSpaceController$DeletePrivateSpaceDialogFragment;Landroid/content/Context;I)V

    const p0, 0x7f141d34

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
