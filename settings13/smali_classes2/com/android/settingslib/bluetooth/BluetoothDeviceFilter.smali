.class public final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field public static final ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final RESTORED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final SYNCED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field public static final UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter-IA;)V

    sput-object v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 55
    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter-IA;)V

    sput-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 58
    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter-IA;)V

    sput-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 62
    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$RestoredDeviceFilter-IA;)V

    sput-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->RESTORED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 66
    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter-IA;)V

    sput-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->SYNCED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 70
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioFilter-IA;)V

    const/4 v3, 0x1

    aput-object v0, v2, v3

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$TransferFilter-IA;)V

    const/4 v3, 0x2

    aput-object v0, v2, v3

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$PanuFilter-IA;)V

    const/4 v3, 0x3

    aput-object v0, v2, v3

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$NapFilter-IA;)V

    const/4 v3, 0x4

    aput-object v0, v2, v3

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAGFilter-IA;)V

    const/4 v3, 0x5

    aput-object v0, v2, v3

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter-IA;)V

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter-IA;)V

    const/4 v1, 0x7

    aput-object v0, v2, v1

    sput-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method public static getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3

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

    .line 109
    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 110
    aget-object p0, v1, v0

    return-object p0

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid filter type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for device picker"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothDeviceFilter"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-object p0
.end method
