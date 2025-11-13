.class public Lcom/samsung/android/settings/wifi/Hash;
.super Ljava/lang/Object;
.source "Hash.java"


# static fields
.field static checksum:Ljava/util/zip/Checksum;

.field static final key:[B

.field private static final mV0_init:J

.field private static final mV1_init:J

.field private static final mV2_init:J

.field private static final mV3_init:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "2309851Cdgewlk3E"

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/Hash;->key:[B

    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/Hash;->bytesLEtoLong([BI)J

    move-result-wide v2

    const-wide v4, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/settings/wifi/Hash;->mV0_init:J

    const/16 v2, 0x8

    .line 36
    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/Hash;->bytesLEtoLong([BI)J

    move-result-wide v3

    const-wide v5, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v3, v5

    sput-wide v3, Lcom/samsung/android/settings/wifi/Hash;->mV1_init:J

    .line 37
    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/Hash;->bytesLEtoLong([BI)J

    move-result-wide v3

    const-wide v5, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v3, v5

    sput-wide v3, Lcom/samsung/android/settings/wifi/Hash;->mV2_init:J

    .line 38
    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/Hash;->bytesLEtoLong([BI)J

    move-result-wide v0

    const-wide v2, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    sput-wide v0, Lcom/samsung/android/settings/wifi/Hash;->mV3_init:J

    .line 46
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/Hash;->checksum:Ljava/util/zip/Checksum;

    return-void
.end method

.method private static bytesLEtoLong([BI)J
    .locals 8

    .line 171
    array-length v0, p0

    sub-int/2addr v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v4, v0, p1

    .line 176
    aget-byte v4, p0, v4

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2

    .line 172
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Less then 8 bytes starting from offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDataCheckString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "00000000"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0000"

    return-object p0

    .line 228
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 229
    sget-object v0, Lcom/samsung/android/settings/wifi/Hash;->checksum:Ljava/util/zip/Checksum;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-interface {v0, p0, v1, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 230
    sget-object p0, Lcom/samsung/android/settings/wifi/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 231
    sget-object p0, Lcom/samsung/android/settings/wifi/Hash;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {p0}, Ljava/util/zip/Checksum;->reset()V

    .line 233
    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/Hash;->longToString(J)Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static longToString(J)Ljava/lang/String;
    .locals 8

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    mul-int/lit8 v4, v1, 0x8

    ushr-long v4, p0, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 200
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
