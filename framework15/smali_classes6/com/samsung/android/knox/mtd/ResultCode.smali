.class public final enum Lcom/samsung/android/knox/mtd/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/mtd/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/mtd/ResultCode;

.field public static final enum greylist BENIGN:Lcom/samsung/android/knox/mtd/ResultCode;

.field public static final enum greylist INVALID:Lcom/samsung/android/knox/mtd/ResultCode;

.field public static final enum greylist MALICIOUS:Lcom/samsung/android/knox/mtd/ResultCode;

.field public static final enum greylist TYPO_SQUATTING:Lcom/samsung/android/knox/mtd/ResultCode;

.field public static final enum greylist UNANALYZED:Lcom/samsung/android/knox/mtd/ResultCode;

.field public static final enum greylist UNSUPPORTED:Lcom/samsung/android/knox/mtd/ResultCode;

.field public static final enum greylist URL_EXPIRED:Lcom/samsung/android/knox/mtd/ResultCode;

.field private static final greylist valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/mtd/ResultCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist value:I


# direct methods
.method private static synthetic greylist $values()[Lcom/samsung/android/knox/mtd/ResultCode;
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->UNSUPPORTED:Lcom/samsung/android/knox/mtd/ResultCode;

    sget-object v1, Lcom/samsung/android/knox/mtd/ResultCode;->UNANALYZED:Lcom/samsung/android/knox/mtd/ResultCode;

    sget-object v2, Lcom/samsung/android/knox/mtd/ResultCode;->BENIGN:Lcom/samsung/android/knox/mtd/ResultCode;

    sget-object v3, Lcom/samsung/android/knox/mtd/ResultCode;->MALICIOUS:Lcom/samsung/android/knox/mtd/ResultCode;

    sget-object v4, Lcom/samsung/android/knox/mtd/ResultCode;->TYPO_SQUATTING:Lcom/samsung/android/knox/mtd/ResultCode;

    sget-object v5, Lcom/samsung/android/knox/mtd/ResultCode;->INVALID:Lcom/samsung/android/knox/mtd/ResultCode;

    sget-object v6, Lcom/samsung/android/knox/mtd/ResultCode;->URL_EXPIRED:Lcom/samsung/android/knox/mtd/ResultCode;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/knox/mtd/ResultCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/mtd/ResultCode;

    const/4 v1, -0x2

    const-string v2, "UNSUPPORTED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/knox/mtd/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->UNSUPPORTED:Lcom/samsung/android/knox/mtd/ResultCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/ResultCode;

    const/4 v1, -0x1

    const-string v2, "UNANALYZED"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/samsung/android/knox/mtd/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->UNANALYZED:Lcom/samsung/android/knox/mtd/ResultCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/ResultCode;

    const-string v1, "BENIGN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/mtd/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->BENIGN:Lcom/samsung/android/knox/mtd/ResultCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/ResultCode;

    const-string v1, "MALICIOUS"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/knox/mtd/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->MALICIOUS:Lcom/samsung/android/knox/mtd/ResultCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/ResultCode;

    const-string v1, "TYPO_SQUATTING"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/knox/mtd/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->TYPO_SQUATTING:Lcom/samsung/android/knox/mtd/ResultCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/ResultCode;

    const-string v1, "INVALID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/mtd/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->INVALID:Lcom/samsung/android/knox/mtd/ResultCode;

    new-instance v0, Lcom/samsung/android/knox/mtd/ResultCode;

    const-string v1, "URL_EXPIRED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/knox/mtd/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->URL_EXPIRED:Lcom/samsung/android/knox/mtd/ResultCode;

    invoke-static {}, Lcom/samsung/android/knox/mtd/ResultCode;->$values()[Lcom/samsung/android/knox/mtd/ResultCode;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->$VALUES:[Lcom/samsung/android/knox/mtd/ResultCode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->valueMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/knox/mtd/ResultCode;->values()[Lcom/samsung/android/knox/mtd/ResultCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/samsung/android/knox/mtd/ResultCode;->valueMap:Ljava/util/Map;

    iget v5, v3, Lcom/samsung/android/knox/mtd/ResultCode;->value:I

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

    iput p3, p0, Lcom/samsung/android/knox/mtd/ResultCode;->value:I

    return-void
.end method

.method public static greylist getCodeFromValue(I)Lcom/samsung/android/knox/mtd/ResultCode;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/mtd/ResultCode;->UNANALYZED:Lcom/samsung/android/knox/mtd/ResultCode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/mtd/ResultCode;

    return-object v0
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/mtd/ResultCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/mtd/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/mtd/ResultCode;

    return-object v0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/mtd/ResultCode;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/mtd/ResultCode;->$VALUES:[Lcom/samsung/android/knox/mtd/ResultCode;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/mtd/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/mtd/ResultCode;

    return-object v0
.end method


# virtual methods
.method public greylist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/knox/mtd/ResultCode;->value:I

    return v0
.end method
