.class public final Lcom/android/settings/development/AdbWirelessDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/development/AdbWirelessDialogUiBase;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mController:Lcom/android/settings/development/AdbWirelessDialogController;

.field public final mListener:Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;

.field public final mMode:I

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/development/AdbWirelessDialog;->mListener:Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;

    iput p3, p0, Lcom/android/settings/development/AdbWirelessDialog;->mMode:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mListener:Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;

    if-eqz p0, :cond_1

    const/4 p1, -0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    new-instance v0, Lcom/android/settings/development/AdbWirelessDialogController;

    iget-object v1, p0, Lcom/android/settings/development/AdbWirelessDialog;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/development/AdbWirelessDialog;->mMode:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/development/AdbWirelessDialogController;-><init>(Lcom/android/settings/development/AdbWirelessDialogUiBase;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mController:Lcom/android/settings/development/AdbWirelessDialogController;

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mListener:Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "WirelessDebuggingFrag"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$PairingCodeDialogListener;->this$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    iput-object v1, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairingCodeDialog:Lcom/android/settings/development/AdbWirelessDialog;

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment;->mAdbManager:Landroid/debug/IAdbManager;

    invoke-interface {p0}, Landroid/debug/IAdbManager;->disablePairing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to cancel pairing"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
