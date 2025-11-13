.class public final Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBluetoothType:B

.field public final mContactCrc:[B

.field public final mContactHash:[B

.field public mDeviceCategory:B

.field public final mDeviceCategoryPrefix:Ljava/lang/String;

.field public mDeviceIconIndex:B

.field public final mDeviceId:[B

.field public mDeviceStatus:B

.field public mDeviceSubType:B

.field public mIsDeviceCategoryInitialized:Z

.field public mTxPower:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    const/4 v1, 0x2

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    new-array v3, v1, [B

    iput-object v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceStatus:B

    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceSubType:B

    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    aput-byte p1, v0, p1

    const/4 v4, 0x1

    aput-byte p1, v0, v4

    aput-byte p1, v0, v1

    aput-byte p1, v2, p1

    aput-byte p1, v2, v4

    aput-byte p1, v3, p1

    aput-byte p1, v3, v4

    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return-void
.end method
