.class public final enum Lcom/samsung/android/sume/core/types/CodecType;
.super Ljava/lang/Enum;
.source "CodecType.java"

# interfaces
.implements Lcom/samsung/android/sume/core/types/NumericEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/types/CodecType;",
        ">;",
        "Lcom/samsung/android/sume/core/types/NumericEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/types/CodecType;

.field public static final enum blacklist HEIF:Lcom/samsung/android/sume/core/types/CodecType;

.field public static final enum blacklist JPEG_QURAM:Lcom/samsung/android/sume/core/types/CodecType;

.field public static final enum blacklist JPEG_SQ:Lcom/samsung/android/sume/core/types/CodecType;

.field public static final enum blacklist NONE:Lcom/samsung/android/sume/core/types/CodecType;


# instance fields
.field private blacklist useInternalThumbnail:Z

.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/sume/core/types/CodecType;
    .locals 4

    sget-object v0, Lcom/samsung/android/sume/core/types/CodecType;->NONE:Lcom/samsung/android/sume/core/types/CodecType;

    sget-object v1, Lcom/samsung/android/sume/core/types/CodecType;->HEIF:Lcom/samsung/android/sume/core/types/CodecType;

    sget-object v2, Lcom/samsung/android/sume/core/types/CodecType;->JPEG_SQ:Lcom/samsung/android/sume/core/types/CodecType;

    sget-object v3, Lcom/samsung/android/sume/core/types/CodecType;->JPEG_QURAM:Lcom/samsung/android/sume/core/types/CodecType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/types/CodecType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/CodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/CodecType;->NONE:Lcom/samsung/android/sume/core/types/CodecType;

    new-instance v0, Lcom/samsung/android/sume/core/types/CodecType;

    const-string v1, "HEIF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/CodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/CodecType;->HEIF:Lcom/samsung/android/sume/core/types/CodecType;

    new-instance v0, Lcom/samsung/android/sume/core/types/CodecType;

    const-string v1, "JPEG_SQ"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/CodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/CodecType;->JPEG_SQ:Lcom/samsung/android/sume/core/types/CodecType;

    new-instance v0, Lcom/samsung/android/sume/core/types/CodecType;

    const-string v1, "JPEG_QURAM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sume/core/types/CodecType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sume/core/types/CodecType;->JPEG_QURAM:Lcom/samsung/android/sume/core/types/CodecType;

    invoke-static {}, Lcom/samsung/android/sume/core/types/CodecType;->$values()[Lcom/samsung/android/sume/core/types/CodecType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/types/CodecType;->$VALUES:[Lcom/samsung/android/sume/core/types/CodecType;

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

    iput p3, p0, Lcom/samsung/android/sume/core/types/CodecType;->value:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sume/core/types/CodecType;->useInternalThumbnail:Z

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/CodecType;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/types/CodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/CodecType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/types/CodecType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/types/CodecType;->$VALUES:[Lcom/samsung/android/sume/core/types/CodecType;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/types/CodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/types/CodecType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/types/CodecType;->value:I

    return v0
.end method

.method public blacklist isUseInternalThumbnail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sume/core/types/CodecType;->useInternalThumbnail:Z

    return v0
.end method

.method public blacklist setUseInternalThumbnail(Z)Z
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/sume/core/types/CodecType;->useInternalThumbnail:Z

    iget-boolean v0, p0, Lcom/samsung/android/sume/core/types/CodecType;->useInternalThumbnail:Z

    return v0
.end method

.method public blacklist stringfy()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/CodecType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sume/core/types/CodecType;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
