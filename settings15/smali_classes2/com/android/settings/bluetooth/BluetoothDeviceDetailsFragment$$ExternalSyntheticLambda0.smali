.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    const/16 p1, 0x19

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mExtraControlViewWidth:I

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mExtraControlUriLoaded:Z

    if-nez p1, :cond_1

    const-string p1, "BTDeviceDetailsFrg"

    const-string p2, "Update extra control UI because of metadata change."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mExtraControlViewWidth:I

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->updateExtraControlUri(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
