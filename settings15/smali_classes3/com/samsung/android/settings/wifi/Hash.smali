.class public abstract Lcom/samsung/android/settings/wifi/Hash;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final checksum:Ljava/util/zip/Checksum;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "2309851Cdgewlk3E"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/Hash;->bytesLEtoLong(I[B)V

    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/Hash;->bytesLEtoLong(I[B)V

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/Hash;->bytesLEtoLong(I[B)V

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/Hash;->bytesLEtoLong(I[B)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/Hash;->checksum:Ljava/util/zip/Checksum;

    return-void
.end method

.method public static bytesLEtoLong(I[B)V
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, v0, p0

    aget-byte v2, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Less then 8 bytes starting from offset:"

    invoke-static {p0, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getDataCheckString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "00000000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0000"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/wifi/Hash;->checksum:Ljava/util/zip/Checksum;

    array-length v1, p0

    move-object v2, v0

    check-cast v2, Ljava/util/zip/CRC32;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Ljava/util/zip/CRC32;->update([BII)V

    move-object p0, v0

    check-cast p0, Ljava/util/zip/CRC32;

    invoke-virtual {p0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    check-cast v0, Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    mul-int/lit8 v3, v0, 0x8

    ushr-long v3, v1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
