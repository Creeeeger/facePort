.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mBluetoothType:B

.field private mContactCrc:[B

.field private mContactHash:[B

.field private mDeviceCategory:B

.field private mDeviceCategoryPrefix:Ljava/lang/String;

.field private mDeviceIconIndex:B

.field private mDeviceId:[B

.field private mTxPower:I

.field final synthetic this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V
    .locals 5

    .line 252
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array p1, p1, [B

    .line 247
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 248
    iput-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    new-array v2, v0, [B

    .line 249
    iput-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    const/4 v3, 0x0

    .line 253
    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    .line 254
    iput-byte v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    .line 255
    iput-byte v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    const-string v4, ""

    .line 256
    iput-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    aput-byte v3, p1, v3

    const/4 v4, 0x1

    aput-byte v3, p1, v4

    aput-byte v3, p1, v0

    aput-byte v3, v1, v3

    aput-byte v3, v1, v4

    aput-byte v3, v2, v3

    aput-byte v3, v2, v4

    .line 264
    iput-byte v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return-void
.end method


# virtual methods
.method public getBluetoothType()B
    .locals 0

    .line 283
    iget-byte p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return p0
.end method

.method public getContactCrc()[B
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    return-object p0
.end method

.method public getContactHash()[B
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    return-object p0
.end method

.method public getDeviceCategory()B
    .locals 0

    .line 277
    iget-byte p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return p0
.end method

.method public getDeviceIconIndex()B
    .locals 0

    .line 278
    iget-byte p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    return p0
.end method

.method public getDeviceId()[B
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    return-object p0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getTxPower()I
    .locals 0

    .line 276
    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    return p0
.end method

.method protected setBluetoothType(B)V
    .locals 0

    .line 274
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    return-void
.end method

.method protected setContactCrc([BI)V
    .locals 2

    .line 272
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected setContactHash([BI)V
    .locals 2

    .line 271
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected setDeviceCategory(B)V
    .locals 0

    .line 268
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    return-void
.end method

.method protected setDeviceIconIndex(B)V
    .locals 0

    .line 269
    iput-byte p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    return-void
.end method

.method protected setDeviceId([BI)V
    .locals 2

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected setTxPower(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    return-void
.end method
