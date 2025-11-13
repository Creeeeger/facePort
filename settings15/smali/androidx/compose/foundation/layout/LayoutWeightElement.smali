.class public final Landroidx/compose/foundation/layout/LayoutWeightElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/LayoutWeightElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/LayoutWeightNode;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final fill:Z

.field public final weight:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->fill:Z

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/LayoutWeightNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget v1, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    iput v1, v0, Landroidx/compose/foundation/layout/LayoutWeightNode;->weight:F

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->fill:Z

    iput-boolean p0, v0, Landroidx/compose/foundation/layout/LayoutWeightNode;->fill:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    iget v3, p1, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->fill:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/LayoutWeightElement;->fill:Z

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->fill:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/layout/LayoutWeightNode;

    iget v0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->weight:F

    iput v0, p1, Landroidx/compose/foundation/layout/LayoutWeightNode;->weight:F

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->fill:Z

    iput-boolean p0, p1, Landroidx/compose/foundation/layout/LayoutWeightNode;->fill:Z

    return-void
.end method
