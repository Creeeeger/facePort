.class public Lcom/samsung/android/knox/mpos/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/mpos/TACommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HEADER_SIZE:I = 0x64

.field public static final blacklist MAX_BUFFER_SIZE:I = 0x500000

.field public static final blacklist MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final blacklist PAYLOAD_SIZE:I = 0xb9c

.field private static final blacklist TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public blacklist mCommandId:I

.field public blacklist mLength:I

.field public blacklist mMagicNum:[B

.field public blacklist mOffset:I

.field public blacklist mRequest:[B

.field public blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/mpos/TACommandRequest$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/mpos/TACommandRequest$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mpos/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    return-void
.end method

.method private constructor blacklist <init>(I[BIII[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    iput p1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    iput-object p2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iput p4, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    iput p5, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    iput-object p6, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    iput v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/mpos/TACommandRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/mpos/TACommandRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/mpos/TACommandRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disassemble()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/mpos/TACommandRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    array-length v1, v1

    const/16 v2, 0xb9c

    if-gt v1, v2, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v2, v1, 0xb9c

    iget v3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    if-ge v2, v3, :cond_2

    new-instance v9, Lcom/samsung/android/knox/mpos/TACommandRequest;

    iget v3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    iget-object v4, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    iget v5, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iget v6, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    iget-object v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    add-int/lit16 v7, v1, 0xb9c

    invoke-static {v2, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/mpos/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit16 v1, v1, 0xb9c

    goto :goto_0

    :cond_2
    new-instance v9, Lcom/samsung/android/knox/mpos/TACommandRequest;

    iget v3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    iget-object v4, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    iget v5, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iget v6, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    iget-object v2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    iget v7, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    invoke-static {v2, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object v2, v9

    move v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/mpos/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public blacklist dump()V
    .locals 0

    return-void
.end method

.method public blacklist getChunkOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    return v0
.end method

.method public blacklist getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    return-object v0
.end method

.method public blacklist getTotalLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    return v0
.end method

.method public blacklist init(I[BI[B)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    iput-object p2, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    iput-object p4, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    array-length v1, p4

    iput v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    :goto_0
    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    iget-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    iget-object v1, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    array-length v0, v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mCommandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/mpos/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_3
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
