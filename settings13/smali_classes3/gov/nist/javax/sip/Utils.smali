.class public Lgov/nist/javax/sip/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static digester:Ljava/security/MessageDigest;

.field private static instance:Lgov/nist/javax/sip/Utils;

.field private static rand:Ljava/util/Random;

.field private static signature:Ljava/lang/String;

.field private static final toHex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lgov/nist/javax/sip/Utils;

    invoke-direct {v0}, Lgov/nist/javax/sip/Utils;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/Utils;->instance:Lgov/nist/javax/sip/Utils;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 63
    fill-array-data v0, :array_0

    sput-object v0, Lgov/nist/javax/sip/Utils;->toHex:[C

    :try_start_0
    const-string v0, "MD5"

    .line 68
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/Utils;->digester:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/Utils;->rand:Ljava/util/Random;

    .line 73
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov/nist/javax/sip/Utils;->signature:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not intialize Digester "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 7

    .line 91
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    .line 92
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 93
    sget-object v4, Lgov/nist/javax/sip/Utils;->toHex:[C

    aget-byte v5, p0, v1

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v4, v6

    aput-char v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 94
    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 141
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
