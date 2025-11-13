.class public final Landroid/hardware/location/NanoAppBinary;
.super Ljava/lang/Object;
.source "NanoAppBinary.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppBinary;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EXPECTED_HEADER_VERSION:I = 0x1

.field private static final greylist-max-o EXPECTED_MAGIC_VALUE:I = 0x4f4e414e

.field private static final greylist-max-o HEADER_ORDER:Ljava/nio/ByteOrder;

.field private static final greylist-max-o HEADER_SIZE_BYTES:I = 0x28

.field private static final greylist-max-o NANOAPP_ENCRYPTED_FLAG_BIT:I = 0x2

.field private static final greylist-max-o NANOAPP_SIGNED_FLAG_BIT:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NanoAppBinary"


# instance fields
.field private greylist-max-o mFlags:I

.field private greylist-max-o mHasValidHeader:Z

.field private greylist-max-o mHeaderVersion:I

.field private greylist-max-o mHwHubType:J

.field private greylist-max-o mMagic:I

.field private greylist-max-o mNanoAppBinary:[B

.field private greylist-max-o mNanoAppId:J

.field private greylist-max-o mNanoAppVersion:I

.field private greylist-max-o mTargetChreApiMajorVersion:B

.field private greylist-max-o mTargetChreApiMinorVersion:B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/hardware/location/NanoAppBinary;->HEADER_ORDER:Ljava/nio/ByteOrder;

    new-instance v0, Landroid/hardware/location/NanoAppBinary$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppBinary$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppBinary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    iget-object v1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-direct {p0}, Landroid/hardware/location/NanoAppBinary;->parseBinaryHeader()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppBinary-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppBinary;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    iput-object p1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-direct {p0}, Landroid/hardware/location/NanoAppBinary;->parseBinaryHeader()V

    return-void
.end method

.method private greylist-max-o parseBinaryHeader()V
    .locals 7

    const-string v0, "NanoAppBinary"

    iget-object v1, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Landroid/hardware/location/NanoAppBinary;->HEADER_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    iget v2, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ")"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected header version "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " while parsing header (expected "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppId:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppVersion:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/location/NanoAppBinary;->mHwHubType:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMajorVersion:B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMinorVersion:B
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    iget v2, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    const v5, 0x4f4e414e

    if-eq v2, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected magic value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/hardware/location/NanoAppBinary;->mMagic:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "0x%08X"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "while parsing header (expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "Not enough contents in nanoapp header"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBinary()[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    return-object v0
.end method

.method public whitelist getBinaryNoHeader()[B
    .locals 4

    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v0, v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    iget-object v2, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NanoAppBinary binary byte size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is less than header size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    return v0
.end method

.method public whitelist getHeaderVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mHeaderVersion:I

    return v0
.end method

.method public whitelist getHwHubType()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppBinary;->mHwHubType:J

    return-wide v0
.end method

.method public whitelist getNanoAppId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppId:J

    return-wide v0
.end method

.method public whitelist getNanoAppVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppVersion:I

    return v0
.end method

.method public whitelist getTargetChreApiMajorVersion()B
    .locals 1

    iget-byte v0, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMajorVersion:B

    return v0
.end method

.method public whitelist getTargetChreApiMinorVersion()B
    .locals 1

    iget-byte v0, p0, Landroid/hardware/location/NanoAppBinary;->mTargetChreApiMinorVersion:B

    return v0
.end method

.method public whitelist hasValidHeader()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppBinary;->mHasValidHeader:Z

    return v0
.end method

.method public whitelist isEncrypted()Z
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isSigned()Z
    .locals 2

    iget v0, p0, Landroid/hardware/location/NanoAppBinary;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppBinary;->mNanoAppBinary:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
