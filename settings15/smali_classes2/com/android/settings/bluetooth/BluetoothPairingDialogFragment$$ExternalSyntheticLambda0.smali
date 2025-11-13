.class public final synthetic Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
