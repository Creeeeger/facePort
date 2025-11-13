.class public final Landroidx/compose/ui/graphics/Float16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final halfValue:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/Float16$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Float16$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private synthetic constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Landroidx/compose/ui/graphics/Float16;

    iget-short p1, p1, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    iget-short p0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    and-int/lit16 v0, p0, 0x7fff

    const/16 v1, 0x7c00

    if-le v0, v1, :cond_1

    and-int/lit16 p0, p1, 0x7fff

    const/4 p1, 0x1

    if-le p0, v1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, p1

    goto :goto_3

    :cond_1
    and-int/lit16 v0, p1, 0x7fff

    if-le v0, v1, :cond_2

    const/4 p0, -0x1

    goto :goto_3

    :cond_2
    const v0, 0x8000

    and-int v1, p0, v0

    const v2, 0xffff

    if-eqz v1, :cond_3

    and-int/2addr p0, v2

    sub-int p0, v0, p0

    goto :goto_1

    :cond_3
    and-int/2addr p0, v2

    :goto_1
    and-int v1, p1, v0

    if-eqz v1, :cond_4

    and-int/2addr p1, v2

    sub-int/2addr v0, p1

    goto :goto_2

    :cond_4
    and-int v0, p1, v2

    :goto_2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    :goto_3
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    iget-short p0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    instance-of v0, p1, Landroidx/compose/ui/graphics/Float16;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/Float16;

    iget-short p1, p1, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-short p0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    invoke-static {p0}, Ljava/lang/Short;->hashCode(S)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-short p0, p0, Landroidx/compose/ui/graphics/Float16;->halfValue:S

    const v0, 0xffff

    and-int/2addr v0, p0

    const v1, 0x8000

    and-int/2addr v1, p0

    ushr-int/lit8 v0, v0, 0xa

    const/16 v2, 0x1f

    and-int/2addr v0, v2

    and-int/lit16 p0, p0, 0x3ff

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sget v0, Landroidx/compose/ui/graphics/Float16Kt;->Fp32DenormalFloat:F

    sub-float/2addr p0, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    neg-float p0, p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    move v0, p0

    goto :goto_1

    :cond_2
    shl-int/lit8 p0, p0, 0xd

    if-ne v0, v2, :cond_4

    const/16 v0, 0xff

    if-eqz p0, :cond_3

    const/high16 v2, 0x400000

    or-int/2addr p0, v2

    :cond_3
    :goto_0
    move v3, v0

    move v0, p0

    move p0, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x70

    goto :goto_0

    :goto_1
    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 p0, p0, 0x17

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
