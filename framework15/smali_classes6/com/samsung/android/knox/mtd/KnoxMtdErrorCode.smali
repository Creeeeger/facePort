.class public final enum Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;
.super Ljava/lang/Enum;
.source "KnoxMtdErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist ALLOWLIST:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist BLOCKLIST:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist INTERNAL_ERROR:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist INTERNET_NOT_AVAILABLE:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist IP_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist MALFORMED_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist MODEL_RESULT:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist NONE:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist RDAP_METADATA_NOT_FOUND:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist SHORT_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist UNICODE_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field public static final enum greylist URL_NOT_EXISTS:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

.field private static final greylist valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist value:I


# direct methods
.method private static synthetic greylist $values()[Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;
    .locals 12

    sget-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->NONE:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v1, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->ALLOWLIST:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v2, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->MODEL_RESULT:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v3, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->SHORT_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v4, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->INTERNET_NOT_AVAILABLE:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v5, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->UNICODE_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v6, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->IP_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v7, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->MALFORMED_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v8, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->INTERNAL_ERROR:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v9, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->RDAP_METADATA_NOT_FOUND:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v10, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->BLOCKLIST:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    sget-object v11, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->URL_NOT_EXISTS:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    filled-new-array/range {v0 .. v11}, [Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->NONE:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "ALLOWLIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->ALLOWLIST:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "MODEL_RESULT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->MODEL_RESULT:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "SHORT_URL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->SHORT_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "INTERNET_NOT_AVAILABLE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->INTERNET_NOT_AVAILABLE:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "UNICODE_URL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->UNICODE_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "IP_URL"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->IP_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "MALFORMED_URL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->MALFORMED_URL:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->INTERNAL_ERROR:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "RDAP_METADATA_NOT_FOUND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->RDAP_METADATA_NOT_FOUND:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "BLOCKLIST"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->BLOCKLIST:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    const-string v1, "URL_NOT_EXISTS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->URL_NOT_EXISTS:Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    invoke-static {}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->$values()[Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->$VALUES:[Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->valueMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->values()[Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->valueMap:Ljava/util/Map;

    iget v5, v3, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->value:I

    return-void
.end method

.method public static greylist getCodeFromValue(I)Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    return-object v0
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    return-object v0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->$VALUES:[Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;

    return-object v0
.end method


# virtual methods
.method public greylist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/mtd/KnoxMtdErrorCode;->value:I

    return v0
.end method
