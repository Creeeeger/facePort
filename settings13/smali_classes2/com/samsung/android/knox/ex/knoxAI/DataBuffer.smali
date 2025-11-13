.class public Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;
.super Ljava/lang/Object;
.source "DataBuffer.java"

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
.field dataFormat:B

.field dataOriginal:[F

.field dataShared:Landroid/os/SharedMemory;

.field dataSource:B

.field dataType:B

.field filedesc:Ljava/io/FileDescriptor;

.field shape:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 395
    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 334
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    if-nez v0, :cond_1

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    .line 339
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 365
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


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DBufr ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 418
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 419
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataFormat:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 420
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->shape:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    .line 421
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    :goto_1
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 428
    iget-byte p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataSource:B

    if-nez p2, :cond_4

    .line 429
    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_2

    goto :goto_2

    .line 432
    :cond_2
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataOriginal:[F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_3

    .line 430
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 438
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->filedesc:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    .line 441
    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;->dataShared:Landroid/os/SharedMemory;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_6
    :goto_3
    return-void
.end method
