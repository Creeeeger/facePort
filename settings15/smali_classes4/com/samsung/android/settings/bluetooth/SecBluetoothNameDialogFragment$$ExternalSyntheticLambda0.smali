.class public final synthetic Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
