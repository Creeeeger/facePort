.class public final enum Lcom/samsung/android/sume/core/types/ImgpType;
.super Ljava/lang/Enum;
.source "ImgpType.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/ImgpType;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist ANY:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CREATE_GAINMAP:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CROP:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CVT_GAMUT:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist CVT_HDR2SDR:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist DECODE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist ENCODE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist ENCODE_HDR:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist FLIP:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist QUALITY_MEASURE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

.field public static final enum blacklist SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/sume/core/types/ImgpType;
    .locals 16

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v1, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v2, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v3, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v4, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_GAMUT:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v5, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_HDR2SDR:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v6, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v7, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v8, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v9, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v10, Lcom/samsung/android/sume/core/types/ImgpType;->QUALITY_MEASURE:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v11, Lcom/samsung/android/sume/core/types/ImgpType;->DECODE:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v12, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v13, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE_HDR:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v14, Lcom/samsung/android/sume/core/types/ImgpType;->FLIP:Lcom/samsung/android/sume/core/types/ImgpType;

    sget-object v15, Lcom/samsung/android/sume/core/types/ImgpType;->CREATE_GAINMAP:Lcom/samsung/android/sume/core/types/ImgpType;

    filled-new-array/range {v0 .. v15}, [Lcom/samsung/android/sume/core/types/ImgpType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "RESIZE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->RESIZE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "CVT_COLOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_COLOR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "CVT_DATA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_DATA:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "CVT_GAMUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_GAMUT:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "CVT_HDR2SDR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CVT_HDR2SDR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "ROTATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ROTATE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "CROP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CROP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "SPLIT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->SPLIT:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "MERGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->MERGE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "QUALITY_MEASURE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->QUALITY_MEASURE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "DECODE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->DECODE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "ENCODE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "ENCODE_HDR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ENCODE_HDR:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "FLIP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->FLIP:Lcom/samsung/android/sume/core/types/ImgpType;

    new-instance v0, Lcom/samsung/android/sume/core/types/ImgpType;

    const-string v1, "CREATE_GAINMAP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/ImgpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->CREATE_GAINMAP:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-static {}, Lcom/samsung/android/sume/core/types/ImgpType;->$values()[Lcom/samsung/android/sume/core/types/ImgpType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->$VALUES:[Lcom/samsung/android/sume/core/types/ImgpType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sume/core/types/ImgpType;->value:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ImgpType;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/ImgpType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/ImgpType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->$VALUES:[Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/ImgpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/ImgpType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/types/ImgpType;->value:I

    return v0
.end method

.method public blacklist stringfy()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ImgpType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/ImgpType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
