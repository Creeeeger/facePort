.class public final Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->updateScanStateView()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f140c4a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    iget-boolean v2, v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->isCastSupported:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f140c49

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    iget-boolean v2, v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->isCastSupported:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->startDiscovery()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140ea0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
