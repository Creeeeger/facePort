.class public abstract Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

.field public static final BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

.field public static final FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final RESTORED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

.field public static final UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(I)V

    sput-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(I)V

    sput-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(I)V

    sput-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->RESTORED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(I)V

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(I)V

    new-instance v3, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(I)V

    new-instance v4, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(I)V

    new-instance v5, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(I)V

    new-instance v6, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(I)V

    new-instance v7, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(I)V

    new-instance v8, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(I)V

    filled-new-array/range {v0 .. v8}, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method public static getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 2

    const/16 v0, 0x69

    if-ne p0, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/16 v0, 0x6a

    if-ne p0, v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-ltz v0, :cond_2

    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    sget-object p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid filter type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for device picker"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothDeviceFilter"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    return-object p0
.end method
