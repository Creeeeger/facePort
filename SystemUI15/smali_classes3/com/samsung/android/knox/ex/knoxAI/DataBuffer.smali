.class public Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dataFormat:B

.field public dataOriginal:[F

.field public dataShared:Landroid/os/SharedMemory;

.field public dataSource:B

.field public dataType:B

.field public filedesc:Ljava/io/FileDescriptor;

.field public shape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-class v0, Landroid/os/SharedMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    :cond_3
    :goto_0
    return-void
.end method

.method public static readFloat16FromBytes([BI)Landroid/util/Half;
    .locals 2

    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Landroid/util/Half;

    int-to-short p0, p0

    invoke-direct {p1, p0}, Landroid/util/Half;-><init>(S)V

    return-object p1
.end method

.method public static readFloatFromBytes([BI)F
    .locals 3

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, -0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, -0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    sub-int/2addr p1, v0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readFloatToBytes([F)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v3, 0x3

    shr-int/lit8 v5, v2, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x2

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static readIntFromBytes([BI)I
    .locals 2

    if-ltz p1, :cond_0

    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readIntToBytes([I)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x3

    aget v4, p0, v1

    shr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v2, 0x2

    shr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static readJSONObjectFromBytes([B)Lorg/json/JSONObject;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static readLongFromBytes([BI)J
    .locals 7

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_0

    add-int/lit8 v2, p1, 0x7

    array-length v3, p0

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static readStringToBytes([Ljava/lang/String;)[B
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move v2, v1

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v3, p0, v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDataFormat()B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    return p0
.end method

.method public getDataOriginal()[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    return-object p0
.end method

.method public getDataShared()Landroid/os/SharedMemory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    return-object p0
.end method

.method public getDataSource()B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    return p0
.end method

.method public getDataType()B
    .locals 0

    iget-byte p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    return p0
.end method

.method public getFileDesc()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public getShape()[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    return-object p0
.end method

.method public setDataFormat(B)V
    .locals 0

    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    return-void
.end method

.method public setDataOriginal([F)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    return-void
.end method

.method public setDataShared(Landroid/os/SharedMemory;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    return-void
.end method

.method public setDataSource(B)V
    .locals 0

    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    return-void
.end method

.method public setDataType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    return-void
.end method

.method public setFileDesc(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setShape([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DBufr ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "],shp=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_6
    :goto_3
    return-void
.end method
