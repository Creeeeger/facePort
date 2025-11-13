.class public Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmUDSRestrict"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1199
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 1

    .line 1212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1214
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 1215
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x25

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1221
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1222
    sget v0, Lcom/android/settings/R$string;->uds_dialog_message:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1223
    sget v0, Lcom/android/settings/R$string;->uds_ok_button:I

    new-instance v1, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$1;-><init>(Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1239
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict$2;-><init>(Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;)V

    const/high16 p0, 0x1040000

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1246
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public show(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
    .locals 2

    .line 1201
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1202
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1203
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 1204
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 1205
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "confirmUDSRestrict"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p0

    :cond_1
    return-object v1
.end method
