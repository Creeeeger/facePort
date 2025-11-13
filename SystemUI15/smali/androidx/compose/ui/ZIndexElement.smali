.class public final Landroidx/compose/ui/ZIndexElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final zIndex:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/ui/ZIndexElement;->zIndex:F

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    new-instance v0, Landroidx/compose/ui/ZIndexNode;

    iget p0, p0, Landroidx/compose/ui/ZIndexElement;->zIndex:F

    invoke-direct {v0, p0}, Landroidx/compose/ui/ZIndexNode;-><init>(F)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/ZIndexElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/ZIndexElement;

    iget p0, p0, Landroidx/compose/ui/ZIndexElement;->zIndex:F

    iget p1, p1, Landroidx/compose/ui/ZIndexElement;->zIndex:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/ZIndexElement;->zIndex:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIndexElement(zIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/ZIndexElement;->zIndex:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/ui/ZIndexNode;

    iget p0, p0, Landroidx/compose/ui/ZIndexElement;->zIndex:F

    iput p0, p1, Landroidx/compose/ui/ZIndexNode;->zIndex:F

    return-void
.end method
