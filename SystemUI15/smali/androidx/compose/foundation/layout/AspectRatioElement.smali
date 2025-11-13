.class final Landroidx/compose/foundation/layout/AspectRatioElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final aspectRatio:F

.field public final matchHeightConstraintsFirst:Z


# direct methods
.method public constructor <init>(FZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->aspectRatio:F

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->matchHeightConstraintsFirst:Z

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "aspectRatio "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " must be > 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/AspectRatioNode;

    iget v1, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->aspectRatio:F

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->matchHeightConstraintsFirst:Z

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/layout/AspectRatioNode;-><init>(FZ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/AspectRatioElement;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/AspectRatioElement;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v3, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->aspectRatio:F

    iget v1, v1, Landroidx/compose/foundation/layout/AspectRatioElement;->aspectRatio:F

    cmpg-float v1, v3, v1

    if-nez v1, :cond_3

    check-cast p1, Landroidx/compose/foundation/layout/AspectRatioElement;

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/AspectRatioElement;->matchHeightConstraintsFirst:Z

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->matchHeightConstraintsFirst:Z

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->aspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->matchHeightConstraintsFirst:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/layout/AspectRatioNode;

    iget v0, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->aspectRatio:F

    iput v0, p1, Landroidx/compose/foundation/layout/AspectRatioNode;->aspectRatio:F

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/AspectRatioElement;->matchHeightConstraintsFirst:Z

    iput-boolean p0, p1, Landroidx/compose/foundation/layout/AspectRatioNode;->matchHeightConstraintsFirst:Z

    return-void
.end method
