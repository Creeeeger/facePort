.class Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;
.super Ljava/lang/Object;
.source "SecDevicePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->updateScanStateView()V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->detail_bluetooth_scan_stop:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 204
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->detail_bluetooth_scan_start:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;->-$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    :goto_0
    return-void
.end method
