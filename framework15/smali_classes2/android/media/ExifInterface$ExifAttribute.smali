.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final blacklist BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final greylist-max-o bytes:[B

.field public final blacklist bytesOffset:J

.field public final greylist-max-o format:I

.field public final greylist-max-o numberOfComponents:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(IIJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    iput-wide p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    iput-object p5, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    return-void
.end method

.method synthetic constructor blacklist <init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    return-void
.end method

.method private constructor greylist-max-o <init>(II[B)V
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    return-void
.end method

.method synthetic constructor blacklist <init>(II[BLandroid/media/ExifInterface$ExifAttribute-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method public static greylist-max-o createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    new-array v3, v1, [B

    aput-byte v2, v3, v0

    move-object v0, v3

    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    :cond_0
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 1

    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 5

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static greylist-max-o createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v5, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static greylist-max-o createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 1

    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method private greylist-max-o getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v0, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v4, :pswitch_data_0

    return-object v2

    :pswitch_0
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    const/4 v5, 0x0

    :goto_0
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_0

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v4

    :pswitch_1
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    const/4 v5, 0x0

    :goto_1
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-object v4

    :pswitch_2
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroid/media/ExifInterface$Rational;

    const/4 v5, 0x0

    :goto_2
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v13, v6

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v10, v6

    new-instance v6, Landroid/media/ExifInterface$Rational;

    const/4 v12, 0x0

    move-object v7, v6

    move-wide v8, v13

    move-wide v15, v10

    invoke-direct/range {v7 .. v12}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return-object v4

    :pswitch_3
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_3
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_3

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    return-object v4

    :pswitch_4
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_4
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_4

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    return-object v4

    :pswitch_5
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroid/media/ExifInterface$Rational;

    const/4 v5, 0x0

    :goto_5
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_5

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v10

    new-instance v6, Landroid/media/ExifInterface$Rational;

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    return-object v4

    :pswitch_6
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [J

    const/4 v5, 0x0

    :goto_6
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_6

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    return-object v4

    :pswitch_7
    iget v4, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_7
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_7

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    return-object v4

    :pswitch_8
    const/4 v4, 0x0

    iget v5, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v6

    array-length v6, v6

    if-lt v5, v6, :cond_a

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_8
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_9

    iget-object v7, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v8

    aget-byte v8, v8, v6

    if-eq v7, v8, :cond_8

    const/4 v5, 0x0

    goto :goto_9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v5, :cond_a

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v6

    array-length v6, v6

    move v4, v6

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    iget v6, v1, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v6, :cond_d

    iget-object v6, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, v4

    if-nez v6, :cond_b

    goto :goto_c

    :cond_b
    const/16 v7, 0x20

    if-lt v6, v7, :cond_c

    int-to-char v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_c
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    :goto_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_9
    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    if-ltz v4, :cond_e

    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v4, v4, v6

    if-gt v4, v5, :cond_e

    new-instance v4, Ljava/lang/String;

    iget-object v7, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    new-array v5, v5, [C

    aput-char v7, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    return-object v4

    :cond_e
    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    :goto_d
    const-string v4, "ExifInterface"

    const-string v5, "IOException occurred during reading a value"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 6

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, [J

    array-length v5, v1

    if-ne v5, v4, :cond_1

    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, [I

    array-length v5, v1

    if-ne v5, v4, :cond_3

    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    instance-of v1, v0, [D

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, [D

    array-length v5, v1

    if-ne v5, v4, :cond_5

    aget-wide v2, v1, v2

    return-wide v2

    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    instance-of v1, v0, [Landroid/media/ExifInterface$Rational;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, [Landroid/media/ExifInterface$Rational;

    array-length v5, v1

    if-ne v5, v4, :cond_7

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    return-wide v2

    :cond_7
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getIntValue(Ljava/nio/ByteOrder;)I
    .locals 6

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, [J

    array-length v5, v1

    if-ne v5, v4, :cond_1

    aget-wide v2, v1, v2

    long-to-int v2, v2

    return v2

    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, [I

    array-length v5, v1

    if-ne v5, v4, :cond_3

    aget v2, v1, v2

    return v2

    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v3, v0, [J

    const-string v4, ","

    if-eqz v3, :cond_4

    move-object v1, v0

    check-cast v1, [J

    const/4 v3, 0x0

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    instance-of v3, v0, [I

    if-eqz v3, :cond_7

    move-object v1, v0

    check-cast v1, [I

    const/4 v3, 0x0

    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_6

    aget v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_7
    instance-of v3, v0, [D

    if-eqz v3, :cond_a

    move-object v1, v0

    check-cast v1, [D

    const/4 v3, 0x0

    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_9

    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_a
    instance-of v3, v0, [Landroid/media/ExifInterface$Rational;

    if-eqz v3, :cond_d

    move-object v1, v0

    check-cast v1, [Landroid/media/ExifInterface$Rational;

    const/4 v3, 0x0

    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_c

    aget-object v5, v1, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_d
    return-object v1
.end method

.method public greylist-max-o size()I
    .locals 2

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
