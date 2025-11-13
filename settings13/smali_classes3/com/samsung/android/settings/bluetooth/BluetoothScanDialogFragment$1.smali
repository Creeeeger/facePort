.class Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;
.super Ljava/lang/Object;
.source "BluetoothScanDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->updateScanStateView()V

    .line 192
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->detail_bluetooth_scan_stop:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 194
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->-$$Nest$fgetisCastSupported(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->-$$Nest$fgetmLocalCastAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 198
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    goto :goto_0

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->detail_bluetooth_scan_start:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->-$$Nest$fgetisCastSupported(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->-$$Nest$fgetmLocalCastAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->startDiscovery()V

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_scan_dialog_scan_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 208
    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
