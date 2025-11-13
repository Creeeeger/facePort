.class public final Landroidx/compose/ui/layout/ScaleFactor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final Unspecified:J


# instance fields
.field public final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/layout/ScaleFactor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/ScaleFactor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0, v0}, Landroidx/compose/ui/layout/ScaleFactorKt;->ScaleFactor(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/layout/ScaleFactor;->Unspecified:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroidx/compose/ui/layout/ScaleFactor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/layout/ScaleFactor;

    iget-wide v2, p1, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    iget-wide p0, p0, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScaleFactor("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    sget-wide v3, Landroidx/compose/ui/layout/ScaleFactor;->Unspecified:J

    cmp-long p0, v1, v3

    const/4 v5, 0x0

    const-string v6, "ScaleFactor is unspecified"

    if-eqz p0, :cond_3

    const/16 p0, 0x20

    shr-long v7, v1, p0

    long-to-int p0, v7

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/16 v7, 0xa

    int-to-float v7, v7

    mul-float/2addr p0, v7

    float-to-int v8, p0

    int-to-float v9, v8

    sub-float/2addr p0, v9

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v9

    if-ltz p0, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    int-to-float p0, v8

    div-float/2addr p0, v7

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p0, v1, v3

    if-eqz p0, :cond_2

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    mul-float/2addr p0, v7

    float-to-int v1, p0

    int-to-float v2, v1

    sub-float/2addr p0, v2

    cmpl-float p0, p0, v9

    if-ltz p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    int-to-float p0, v1

    div-float/2addr p0, v7

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v5
.end method
