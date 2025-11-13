.class final Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final minHeight:F

.field public final minWidth:F


# direct methods
.method private constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    iput p2, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    return-void
.end method

.method public constructor <init>(FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Landroidx/compose/ui/unit/Dp;->Unspecified:F

    :cond_1
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    invoke-direct {v0, v2, p0, v1}, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;-><init>(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;

    iget v0, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    iget v2, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    invoke-static {v2, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    iget p1, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;

    iget v0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minWidth:F

    iput v0, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minWidth:F

    iget p0, p0, Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;->minHeight:F

    iput p0, p1, Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;->minHeight:F

    return-void
.end method
