.class Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SecBluetoothDeviceDetailsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 194
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$mfinishActivity(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 202
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "com.samsung.bluetooth.device.extra.META_DATA"

    .line 203
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_2

    .line 204
    array-length v0, p2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDeviceDetailsSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 206
    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const v3, 0xffff

    and-int/2addr v1, v3

    .line 207
    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->CUSTOM_CONNECTED_WITH_PROFILE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    .line 208
    aget-byte v3, p2, v1

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 210
    :cond_1
    sget-object v2, Lcom/samsung/android/bluetooth/SmepTag;->CUSTOM_SUPPORT_RENAME:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v2}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 211
    array-length p1, p2

    if-le p1, v1, :cond_2

    aget-byte p1, p2, v1

    if-lez p1, :cond_2

    .line 212
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    sget p1, Lcom/android/settings/R$id;->rename_button:I

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$msetEnabledMenuItem(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;IZ)V

    :cond_2
    :goto_0
    return-void
.end method
