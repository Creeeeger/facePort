.class final Landroidx/compose/foundation/ScrollSemanticsElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final isScrollable:Z

.field public final isVertical:Z

.field public final reverseScrolling:Z

.field public final state:Landroidx/compose/foundation/ScrollState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->state:Landroidx/compose/foundation/ScrollState;

    iput-boolean p2, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->reverseScrolling:Z

    iput-object p3, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p4, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isScrollable:Z

    iput-boolean p5, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isVertical:Z

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 7

    new-instance v6, Landroidx/compose/foundation/ScrollSemanticsModifierNode;

    iget-boolean v2, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->reverseScrolling:Z

    iget-object v3, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->state:Landroidx/compose/foundation/ScrollState;

    iget-boolean v4, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isScrollable:Z

    iget-boolean v5, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isVertical:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/ScrollSemanticsModifierNode;-><init>(Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)V

    return-object v6
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/ScrollSemanticsElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/ScrollSemanticsElement;

    iget-object v1, p1, Landroidx/compose/foundation/ScrollSemanticsElement;->state:Landroidx/compose/foundation/ScrollState;

    iget-object v3, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->state:Landroidx/compose/foundation/ScrollState;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->reverseScrolling:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/ScrollSemanticsElement;->reverseScrolling:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v3, p1, Landroidx/compose/foundation/ScrollSemanticsElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isScrollable:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/ScrollSemanticsElement;->isScrollable:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isVertical:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/ScrollSemanticsElement;->isVertical:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->state:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->reverseScrolling:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isScrollable:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isVertical:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScrollSemanticsElement(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->state:Landroidx/compose/foundation/ScrollState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reverseScrolling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->reverseScrolling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flingBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isScrollable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isScrollable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isVertical:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/foundation/ScrollSemanticsModifierNode;

    iget-object v0, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->state:Landroidx/compose/foundation/ScrollState;

    iput-object v0, p1, Landroidx/compose/foundation/ScrollSemanticsModifierNode;->state:Landroidx/compose/foundation/ScrollState;

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->reverseScrolling:Z

    iput-boolean v0, p1, Landroidx/compose/foundation/ScrollSemanticsModifierNode;->reverseScrolling:Z

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollSemanticsElement;->isVertical:Z

    iput-boolean p0, p1, Landroidx/compose/foundation/ScrollSemanticsModifierNode;->isVertical:Z

    return-void
.end method
