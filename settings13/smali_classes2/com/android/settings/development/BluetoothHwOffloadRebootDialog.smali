.class public Lcom/android/settings/development/BluetoothHwOffloadRebootDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothHwOffloadRebootDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/BluetoothHwOffloadRebootDialog$OnHwOffloadDialogListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a1

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/BluetoothHwOffloadRebootDialog$OnHwOffloadDialogListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 78
    invoke-interface {p1}, Lcom/android/settings/development/BluetoothHwOffloadRebootDialog$OnHwOffloadDialogListener;->onHwOffloadDialogConfirmed()V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p1}, Lcom/android/settings/development/BluetoothHwOffloadRebootDialog$OnHwOffloadDialogListener;->onHwOffloadDialogCanceled()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 60
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->bluetooth_disable_hw_offload_dialog_message:I

    .line 61
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bluetooth_disable_hw_offload_dialog_title:I

    .line 62
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bluetooth_disable_hw_offload_dialog_confirm:I

    .line 63
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bluetooth_disable_hw_offload_dialog_cancel:I

    .line 65
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
