.class public final Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mLinkType:I

    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/BluetoothRestoredDevice;->mAddress:Ljava/lang/String;

    return-void
.end method
