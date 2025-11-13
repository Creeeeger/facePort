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

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "BluetoothLeDeviceFilter"

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

    .line 249
    new-instance v0, Landroid/companion/BluetoothLeDeviceFilter$1;

    invoke-direct {v0}, Landroid/companion/BluetoothLeDeviceFilter$1;-><init>()V

    sput-object v0, Landroid/companion/BluetoothLeDeviceFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 1
    .param p1, "namePattern"    # Ljava/util/regex/Pattern;
    .param p2, "scanFilter"    # Landroid/bluetooth/le/ScanFilter;
    .param p3, "rawDataFilter"    # [B
    .param p4, "rawDataFilterMask"    # [B
    .param p5, "renamePrefix"    # Ljava/lang/String;
    .param p6, "renameSuffix"    # Ljava/lang/String;
    .param p7, "renameBytesFrom"    # I
    .param p8, "renameBytesLength"    # I
    .param p9, "renameNameFrom"    # I
    .param p10, "renameNameLength"    # I
    .param p11, "renameBytesReverseOrder"    # Z

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    .line 78
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/util/ObjectUtils;->firstNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    iput-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 79
    iput-object p3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    .line 80
    iput-object p4, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    .line 81
    iput-object p5, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    .line 83
    iput p7, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    .line 84
    iput p8, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    .line 85
    iput p9, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    .line 86
    iput p10, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    .line 87
    iput-boolean p11, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    .line 88
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZLandroid/companion/BluetoothLeDeviceFilter-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/companion/BluetoothLeDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/bluetooth/le/ScanFilter;[B[BLjava/lang/String;Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method public static whitelist getRenamePrefixLengthLimit()I
    .locals 1

    .line 286
    const/16 v0, 0xa

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 190
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 191
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/companion/BluetoothLeDeviceFilter;

    .line 192
    .local v2, "that":Landroid/companion/BluetoothLeDeviceFilter;
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

    .line 197
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 198
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    .line 199
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    .line 200
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    .line 201
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    iget-object v4, v2, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    .line 202
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 192
    :goto_0
    return v0

    .line 190
    .end local v2    # "that":Landroid/companion/BluetoothLeDeviceFilter;
    :cond_3
    :goto_1
    return v1
.end method

.method public greylist-max-o getDeviceDisplayName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;
    .locals 9
    .param p1, "sr"    # Landroid/bluetooth/le/ScanResult;

    .line 146
    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    if-gez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    if-ltz v1, :cond_4

    .line 151
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    .line 152
    .local v1, "bytes":[B
    iget v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    .line 153
    .local v2, "startInclusive":I
    iget v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    iget v4, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 154
    .local v3, "endInclusive":I
    iget-boolean v5, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    if-eqz v5, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v2

    .line 155
    .local v6, "initial":I
    :goto_0
    if-eqz v5, :cond_2

    const/4 v5, -0x1

    goto :goto_1

    :cond_2
    move v5, v4

    .line 156
    .local v5, "step":I
    :goto_1
    move v7, v6

    .local v7, "i":I
    :goto_2
    if-gt v2, v7, :cond_3

    if-gt v7, v3, :cond_3

    .line 157
    aget-byte v8, v1, v7

    invoke-static {v8, v4}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/2addr v7, v5

    goto :goto_2

    .line 159
    .end local v1    # "bytes":[B
    .end local v2    # "startInclusive":I
    .end local v3    # "endInclusive":I
    .end local v5    # "step":I
    .end local v6    # "initial":I
    .end local v7    # "i":I
    :cond_3
    goto :goto_3

    .line 160
    :cond_4
    nop

    .line 161
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Landroid/companion/BluetoothDeviceFilterUtils;->getDeviceDisplayNameInternal(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    iget v3, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    add-int/2addr v3, v2

    .line 162
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
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

    .line 54
    check-cast p1, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter;->getDeviceDisplayName(Landroid/bluetooth/le/ScanResult;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getMediumType()I
    .locals 1

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getNamePattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public greylist-max-o getRawDataFilter()[B
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    return-object v0
.end method

.method public greylist-max-o getRawDataFilterMask()[B
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    return-object v0
.end method

.method public greylist-max-o getRenameBytesFrom()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    return v0
.end method

.method public greylist-max-o getRenameBytesLength()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    return v0
.end method

.method public greylist-max-o getRenamePrefix()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRenameSuffix()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getScanFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 207
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mNamePattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 207
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isRenameBytesReverseOrder()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    return v0
.end method

.method public greylist-max-o matches(Landroid/bluetooth/le/ScanResult;)Z
    .locals 4
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .line 170
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 171
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getScanFilter()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/companion/BluetoothDeviceFilterUtils;->matchesName(Ljava/util/regex/Pattern;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    if-eqz v1, :cond_0

    .line 174
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

    .line 178
    .local v1, "result":Z
    :goto_0
    return v1
.end method

.method public bridge synthetic blacklist matches(Landroid/os/Parcelable;)Z
    .locals 0

    .line 54
    check-cast p1, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p0, p1}, Landroid/companion/BluetoothLeDeviceFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 234
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

    .line 237
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRawDataFilterMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    .line 238
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

    .line 234
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 214
    invoke-virtual {p0}, Landroid/companion/BluetoothLeDeviceFilter;->getNamePattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/BluetoothDeviceFilterUtils;->patternToString(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mScanFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 217
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRawDataFilterMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 218
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenamePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameNameLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-boolean v0, p0, Landroid/companion/BluetoothLeDeviceFilter;->mRenameBytesReverseOrder:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    return-void
.end method
