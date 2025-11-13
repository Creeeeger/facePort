.class public final Landroid/companion/BluetoothLeDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothLeDeviceFilter.java"

# interfaces
.implements Landroid/companion/DeviceFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/BluetoothLeDeviceFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/companion/DeviceFilter<",
        "Landroid/bluetooth/le/ScanResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/BluetoothLeDeviceFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CDM_BluetoothLeDeviceFilter"

.field private static final greylist-max-o RENAME_PREFIX_LENGTH_LIMIT:I = 0xa


# instance fields
.field private final greylist-max-o mNamePattern:Ljava/util/regex/Pattern;

.field private final greylist-max-o mRawDataFilter:[B

.field private final greylist-max-o mRawDataFilterMask:[B

.field private final greylist-max-o mRenameBytesFrom:I

.field private final greylist-max-o mRenameBytesLength:I

.field private final greylist-max-o mRenameBytesReverseOrder:Z

.field private final greylist-max-o mRenameNameFrom:I

.field private final greylist-max-o mRenameNameLength:I

.field private final greylist-max-o mRenamePrefix:Ljava/lang/String;

.field private final greylist-max-o mRenameSuffix:Ljava/lang/String;

.field private final greylist-max-o mScanFilter:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/BluetoothLeDeviceFilter$1;

    invoke-direct {v0}, Landroid/companion/BluetoothLeDeviceFilter$1;-><init>()V

    sput-object v0, Landroid/companion/BluetoothLeDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ObjectUtils;->firstNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    iput-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iput-object p3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    iput-object p4, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    iput-object p5, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    iput-object p6, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    iput p7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iput p8, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    iput p9, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iput p10, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    iput-boolean p11, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZLandroid/companion/BluetoothLeDeviceFilter-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/companion/BluetoothLeDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method public static whitelist getRenamePrefixLengthLimit()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/companion/BluetoothLeDeviceFilter;

    iget v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iget v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    iget v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iget v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    iget v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    iget-boolean v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public greylist-max-o getDeviceDisplayName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;
    .locals 9

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    iget v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iget v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iget v4, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-boolean v5, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    iget-boolean v6, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    move v7, v5

    :goto_2
    if-gt v2, v7, :cond_3

    if-gt v7, v3, :cond_3

    aget-byte v8, v1, v7

    invoke-static {v8, v4}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v7, v6

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    nop

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iget v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iget v4, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic blacklist getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter;->getDeviceDisplayName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getMediumType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getNamePattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public greylist-max-o getRawDataFilter()[B
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    return-object v0
.end method

.method public greylist-max-o getRawDataFilterMask()[B
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    return-object v0
.end method

.method public greylist-max-o getRenameBytesFrom()I
    .locals 1

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    return v0
.end method

.method public greylist-max-o getRenameBytesLength()I
    .locals 1

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    return v0
.end method

.method public greylist-max-o getRenamePrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRenameSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getScanFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 1

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 11

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    iget-object v5, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    iget v6, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v10, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isRenameBytesReverseOrder()Z
    .locals 1

    iget-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    return v0
.end method

.method public greylist-max-o matches(Landroid/bluetooth/le/ScanResult;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/BitUtils;->maskedEquals([B[B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic blacklist matches(Landroid/os/Parcelable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLEDeviceFilter{mNamePattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScanFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRawDataFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRawDataFilterMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenamePrefix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRenameSuffix=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenameBytesFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenameBytesLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenameNameFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenameNameLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenameBytesReverseOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
