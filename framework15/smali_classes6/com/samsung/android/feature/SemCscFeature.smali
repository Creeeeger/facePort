.class public Lcom/samsung/android/feature/SemCscFeature;
.super Ljava/lang/Object;
.source "SemCscFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/feature/SemCscFeature$SemCscFeatureHolder;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_COUNTRYISO:Ljava/lang/String; = "countryISO"

.field private static final blacklist DEBUG:Z

.field private static final blacklist DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final blacklist SALT_LENGTH:I = 0x100

.field private static final blacklist TAG:Ljava/lang/String; = "SemCscFeature"

.field private static final blacklist TAG_COUNTRY:Ljava/lang/String; = "Country"

.field private static final blacklist TAG_COUNTRYISO:Ljava/lang/String; = "CountryISO"

.field private static final blacklist TAG_FEATURESET:Ljava/lang/String; = "FeatureSet"

.field private static final blacklist XML_HEADER:Ljava/lang/String; = "<?xml"


# instance fields
.field private blacklist mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastOmcUpdateVersion:Ljava/lang/String;

.field private final blacklist salts:[B

.field private final blacklist shifts:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/feature/SemCscFeature;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mLastOmcUpdateVersion:Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile()V

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        -0x3bt
        0x21t
        -0x22t
        0x6bt
        0x1ct
        -0x6bt
        0x37t
        0x4et
        0x11t
        -0x51t
        0x6t
        -0x50t
        -0x79t
        -0x23t
        -0x17t
        0x48t
        0x7at
        -0x3ft
        -0x2bt
        0x44t
        0x77t
        -0x4et
        -0x6ft
        -0x3ct
        0x1ft
        0x3ct
        0x39t
        0x5ct
        -0x58t
        -0x64t
        -0x45t
        -0x6at
        0x5bt
        0x45t
        0x5dt
        0x6et
        0x17t
        0x5dt
        0x35t
        -0x2ct
        -0x33t
        0x40t
        -0x50t
        0x2et
        0x2t
        -0x4t
        0xct
        -0x2dt
        0x50t
        -0x2ct
        -0x23t
        -0x6ft
        -0x1ct
        -0x42t
        -0x74t
        0x27t
        0x2t
        -0x1bt
        -0x2dt
        -0x34t
        0x7dt
        0x27t
        0x42t
        -0x5at
        0x3ft
        -0x69t
        -0x43t
        0x54t
        -0x39t
        -0x4t
        -0x4t
        0x65t
        -0x5at
        0x51t
        0xat
        -0x21t
        0x1t
        0x43t
        -0x39t
        -0x47t
        0x12t
        -0x4at
        0x66t
        0x60t
        -0x59t
        0x40t
        -0x11t
        0x36t
        -0x5et
        -0x54t
        -0x42t
        0xet
        0x77t
        0x79t
        0x2t
        -0x4et
        -0x4ft
        0x59t
        0x3ft
        0x5dt
        0x6dt
        -0x4et
        -0x33t
        0x42t
        -0x24t
        0x20t
        0x56t
        0x3t
        -0x3at
        -0xft
        0x5ct
        0x3at
        0x2t
        -0x59t
        -0x50t
        -0xdt
        -0x1t
        0x7at
        -0x4t
        0x30t
        0x3ft
        -0x2ct
        0x3bt
        0x64t
        -0x2at
        -0x2dt
        0x3bt
        -0x7t
        -0x11t
        -0x36t
        0x22t
        -0x36t
        0x47t
        -0x40t
        -0x1at
        -0x57t
        -0x50t
        -0x11t
        -0x2ct
        -0x26t
        -0x70t
        0x46t
        0xat
        -0x6at
        0x5ft
        -0x18t
        -0x4t
        -0x76t
        0x2dt
        -0x55t
        -0xdt
        0x55t
        0x19t
        -0x66t
        -0x77t
        0xdt
        -0x25t
        0x74t
        0x2et
        -0x45t
        0x3bt
        0x2at
        -0x5at
        -0x26t
        -0x69t
        0x65t
        -0x77t
        -0x24t
        0x61t
        -0x3t
        -0x3et
        -0x5bt
        -0x61t
        -0x7dt
        0x11t
        0xet
        0x6at
        -0x48t
        -0x77t
        0x63t
        0x6ft
        0x14t
        0x12t
        -0x1bt
        0x71t
        0x40t
        -0x18t
        0x4at
        -0x3ct
        -0x64t
        0x1at
        0x38t
        -0x2ct
        -0x46t
        0xct
        -0x33t
        -0x64t
        -0x20t
        -0xbt
        0x1at
        0x30t
        -0x75t
        0x62t
        -0x5dt
        0x33t
        -0x19t
        -0x4ft
        -0x1ft
        0x61t
        0x57t
        -0x69t
        -0x40t
        0x7t
        -0xdt
        -0x65t
        0x21t
        -0x7at
        0x5t
        -0x68t
        0x59t
        -0x2ct
        -0x75t
        0x3ft
        -0x50t
        -0x6t
        -0x47t
        -0x6et
        -0x1dt
        -0x69t
        0x74t
        0x6bt
        -0x5dt
        0x5bt
        -0x29t
        -0xdt
        0x14t
        -0x73t
        -0x4et
        0x2bt
        0x4ft
        -0x7at
        0x6t
        0x66t
        -0x20t
        0x34t
        -0x76t
        -0x33t
        0x48t
        -0x68t
        0x29t
        -0x26t
        0x7ct
        0x48t
        -0x7et
        -0x23t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x2t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x7t
        0x1t
        0x6t
        0x5t
        0x3t
        0x3t
        0x1t
        0x2t
        0x5t
        0x0t
        0x6t
        0x2t
        0x2t
        0x4t
        0x2t
        0x2t
        0x3t
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x3t
        0x5t
        0x3t
        0x1t
        0x6t
        0x5t
        0x6t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x3t
        0x2t
        0x7t
        0x7t
        0x5t
        0x6t
        0x7t
        0x3t
        0x5t
        0x1t
        0x0t
        0x7t
        0x6t
        0x3t
        0x6t
        0x5t
        0x4t
        0x5t
        0x3t
        0x5t
        0x1t
        0x3t
        0x3t
        0x1t
        0x5t
        0x4t
        0x1t
        0x0t
        0x0t
        0x2t
        0x6t
        0x6t
        0x6t
        0x6t
        0x4t
        0x0t
        0x1t
        0x1t
        0x0t
        0x5t
        0x5t
        0x4t
        0x2t
        0x4t
        0x6t
        0x1t
        0x7t
        0x1t
        0x2t
        0x1t
        0x1t
        0x6t
        0x5t
        0x4t
        0x7t
        0x6t
        0x5t
        0x1t
        0x6t
        0x7t
        0x0t
        0x2t
        0x6t
        0x3t
        0x1t
        0x7t
        0x1t
        0x1t
        0x7t
        0x4t
        0x0t
        0x4t
        0x2t
        0x5t
        0x3t
        0x1t
        0x1t
        0x5t
        0x6t
        0x0t
        0x3t
        0x5t
        0x3t
        0x6t
        0x5t
        0x7t
        0x2t
        0x5t
        0x6t
        0x6t
        0x2t
        0x2t
        0x3t
        0x6t
        0x0t
        0x4t
        0x3t
        0x2t
        0x0t
        0x2t
        0x2t
        0x3t
        0x5t
        0x3t
        0x3t
        0x2t
        0x5t
        0x5t
        0x5t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x5t
        0x1t
        0x6t
        0x2t
        0x4t
        0x7t
        0x1t
        0x4t
        0x6t
        0x0t
        0x6t
        0x4t
        0x3t
        0x2t
        0x6t
        0x1t
        0x6t
        0x3t
        0x2t
        0x1t
        0x6t
        0x7t
        0x3t
        0x2t
        0x1t
        0x1t
        0x5t
        0x6t
        0x7t
        0x2t
        0x2t
        0x2t
        0x7t
        0x4t
        0x6t
        0x7t
        0x5t
        0x3t
        0x1t
        0x4t
        0x2t
        0x7t
        0x1t
        0x6t
        0x2t
        0x4t
        0x1t
        0x5t
        0x6t
        0x5t
        0x4t
        0x5t
        0x0t
        0x1t
        0x1t
        0x6t
        0x3t
        0x7t
        0x2t
        0x0t
        0x2t
        0x5t
        0x0t
        0x1t
        0x3t
        0x3t
        0x2t
        0x6t
        0x7t
        0x7t
        0x2t
        0x5t
        0x6t
        0x0t
        0x4t
        0x1t
        0x2t
        0x5t
        0x3t
        0x7t
        0x6t
        0x5t
        0x2t
        0x5t
        0x2t
        0x0t
        0x1t
        0x3t
        0x1t
        0x4t
        0x3t
        0x4t
        0x2t
    .end array-data
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/feature/SemCscFeature-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;-><init>()V

    return-void
.end method

.method private blacklist _decode([B)[B
    .locals 6

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v3, v3, v4

    shl-int/2addr v2, v3

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    rem-int/lit16 v5, v1, 0x100

    aget-byte v4, v4, v5

    rsub-int/lit8 v4, v4, 0x8

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private blacklist _decompressGzip([B)[B
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x400

    :try_start_0
    new-array v2, v2, [B

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    const/4 v1, 0x0

    nop

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_2
    return-object v4

    :catchall_0
    move-exception v2

    goto :goto_7

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    const/4 v1, 0x0

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_4

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v0, 0x0

    goto :goto_5

    :goto_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_3
    :goto_5
    nop

    :goto_6
    const/4 v3, 0x0

    return-object v3

    :goto_7
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    const/4 v1, 0x0

    goto :goto_8

    :catch_3
    move-exception v3

    goto :goto_9

    :cond_4
    :goto_8
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v0, 0x0

    goto :goto_a

    :goto_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :cond_5
    :goto_a
    nop

    :goto_b
    throw v2
.end method

.method private blacklist decode([B)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->_decode([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->_decompressGzip([B)[B

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized blacklist get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isFeatureChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemCscFeature"

    const-string v1, "CscFeature file is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static whitelist getInstance()Lcom/samsung/android/feature/SemCscFeature;
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature$SemCscFeatureHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getOmcUpdateVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "mdc.omc.update_version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isDebugEnabled()Z
    .locals 4

    const-string v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.product_ship"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "0x4948"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist isElementWithCountryISO(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "FeatureSet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Country"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CountryISO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isFeatureChanged()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isOmcUpdateVersionChanged()Z

    move-result v0

    return v0
.end method

.method private blacklist isOmcUpdateVersionChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mLastOmcUpdateVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->getOmcUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist isXmlEncoded(Ljava/io/File;)Z
    .locals 5

    const-string v0, "SemCscFeature"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    nop

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v3, :cond_1

    const-string v4, "<?xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "Encoded"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    nop

    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v3

    :try_start_3
    const-string v4, "Exception : isXmlEncoded"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v1, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_2
    :goto_3
    nop

    :goto_4
    return v2

    :goto_5
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v1, 0x0

    goto :goto_6

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :cond_3
    :goto_6
    nop

    :goto_7
    throw v0
.end method

.method private blacklist loadFeatureFile()V
    .locals 4

    const-string v0, "mdc.system.path"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdc.unified"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->getOmcUpdateVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mLastOmcUpdateVersion:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ro.csc.countryiso_code"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist loadFeatureFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v0

    :goto_0
    const-string v10, "SemCscFeature"

    if-nez v9, :cond_1

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/cscfeature.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-gtz v0, :cond_2

    move-object/from16 v15, p2

    goto/16 :goto_6

    :cond_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v3, v0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    invoke-direct {v1, v11}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v0

    move v15, v0

    new-array v0, v15, [B

    move-object/from16 v16, v0

    move-object/from16 v13, v16

    invoke-virtual {v4, v13}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_4

    const-string v0, "FileInputStream read error"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    nop

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    :try_start_2
    invoke-direct {v1, v13}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v0

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v14

    const/4 v14, 0x0

    invoke-interface {v3, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v6, v13

    move-object v13, v8

    move-object v8, v7

    move v7, v6

    move v6, v0

    :goto_3
    const/4 v14, 0x1

    if-eq v7, v14, :cond_c

    const/4 v0, 0x2

    if-ne v7, v0, :cond_8

    if-nez v6, :cond_6

    move-object/from16 v15, p2

    :try_start_3
    invoke-direct {v1, v3, v15, v9}, Lcom/samsung/android/feature/SemCscFeature;->needToSkipElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    move-object v8, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v11, v0

    move v6, v7

    move-object v7, v8

    move-object v8, v13

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move v6, v7

    move-object v7, v8

    move-object v8, v13

    goto/16 :goto_c

    :catch_2
    move-exception v0

    move v6, v7

    move-object v7, v8

    move-object v8, v13

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move v6, v7

    move-object v7, v8

    move-object v8, v13

    goto/16 :goto_e

    :cond_6
    move-object/from16 v15, p2

    :cond_7
    :goto_4
    if-nez v6, :cond_b

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_5

    :cond_8
    move-object/from16 v15, p2

    const/4 v0, 0x4

    if-ne v7, v0, :cond_a

    if-nez v6, :cond_b

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_b

    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, v8, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_5

    :cond_a
    const/4 v0, 0x3

    if-ne v7, v0, :cond_b

    if-eqz v6, :cond_b

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/feature/SemCscFeature;->isElementWithCountryISO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    move v6, v0

    :cond_b
    :goto_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v7, v0

    goto :goto_3

    :cond_c
    move-object/from16 v15, p2

    nop

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x0

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    const/4 v5, 0x0

    :cond_d
    goto/16 :goto_13

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_e
    move-object/from16 v15, p2

    :goto_6
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "files does not exist from "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_f

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :cond_f
    :goto_7
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    const/4 v5, 0x0

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    :goto_9
    nop

    :goto_a
    return-void

    :catch_7
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object/from16 v15, p2

    :goto_b
    move-object v11, v0

    goto/16 :goto_14

    :catch_a
    move-exception v0

    move-object/from16 v15, p2

    :goto_c
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v4, :cond_11

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v4, v0

    :cond_11
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_10

    :catch_b
    move-exception v0

    move-object/from16 v15, p2

    :goto_d
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v4, :cond_12

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v4, v0

    :cond_12
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_10

    :catch_c
    move-exception v0

    move-object/from16 v15, p2

    :goto_e
    :try_start_d
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v4, :cond_13

    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_f

    :catch_d
    move-exception v0

    goto :goto_11

    :cond_13
    :goto_f
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    :goto_10
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v8

    move-object v8, v7

    move v7, v6

    goto :goto_13

    :cond_14
    :goto_12
    move-object v13, v8

    move-object v8, v7

    move v7, v6

    :goto_13
    return-void

    :catchall_2
    move-exception v0

    goto :goto_b

    :goto_14
    if-eqz v4, :cond_15

    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x0

    goto :goto_15

    :catch_e
    move-exception v0

    goto :goto_16

    :cond_15
    :goto_15
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    const/4 v5, 0x0

    goto :goto_17

    :goto_16
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_16
    :goto_17
    nop

    :goto_18
    throw v11
.end method

.method private blacklist needToSkipElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "countryISO"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->isElementWithCountryISO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    :goto_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public whitelist getBoolean(ILjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist getBoolean(ILjava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/feature/SemCscFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SemCscFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getBoolean] tag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/feature/SemCscFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SemCscFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBoolean] tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return p2

    :catch_0
    move-exception v0

    return p2
.end method

.method public whitelist getInt(ILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getInt(ILjava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/feature/SemCscFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SemCscFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getInt] tag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/feature/SemCscFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SemCscFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getInt] tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_1
    return p2

    :catch_0
    move-exception v0

    return p2
.end method

.method public blacklist getInteger(ILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(ILjava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getInteger(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/feature/SemCscFeature;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SemCscFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getString] tag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/feature/SemCscFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SemCscFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getString] tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object p2

    :catch_0
    move-exception v0

    return-object p2
.end method

.method public blacklist tracer(I)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SemCscFeature"

    if-nez p1, :cond_0

    const-string v1, "mFeatureList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    return-object v0

    :cond_1
    const-string v1, "Invalid feature table number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
