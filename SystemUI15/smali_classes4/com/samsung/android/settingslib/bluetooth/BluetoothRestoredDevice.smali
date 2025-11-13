.class public final Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAddress:Ljava/lang/String;

.field public mAppearance:I

.field public mBondState:I

.field public mCod:I

.field public mLinkType:I

.field public mManufacturerData:[B

.field public mName:Ljava/lang/String;

.field public mTimeStamp:J

.field public mUuids:[Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    iput-object p2, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final setUuids(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringToken(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "BluetoothUtils"

    const-string v2, "failed makeParcelUuids"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mUuids:[Landroid/os/ParcelUuid;

    :cond_1
    return-void
.end method
