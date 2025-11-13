.class public final Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->updateScanStateView()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f140c4a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f140c49

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    :goto_0
    return-void
.end method
