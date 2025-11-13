.class final Landroidx/compose/material3/ThumbElement;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/material3/ThumbElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/material3/ThumbNode;",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final checked:Z

.field public final interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ThumbElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-boolean p2, p0, Landroidx/compose/material3/ThumbElement;->checked:Z

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Landroidx/compose/material3/ThumbNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iget-object v1, p0, Landroidx/compose/material3/ThumbElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object v1, v0, Landroidx/compose/material3/ThumbNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-boolean p0, p0, Landroidx/compose/material3/ThumbElement;->checked:Z

    iput-boolean p0, v0, Landroidx/compose/material3/ThumbNode;->checked:Z

    const/high16 p0, 0x7fc00000    # Float.NaN

    iput p0, v0, Landroidx/compose/material3/ThumbNode;->initialOffset:F

    iput p0, v0, Landroidx/compose/material3/ThumbNode;->initialSize:F

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/ThumbElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/ThumbElement;

    iget-object v1, p1, Landroidx/compose/material3/ThumbElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v3, p0, Landroidx/compose/material3/ThumbElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Landroidx/compose/material3/ThumbElement;->checked:Z

    iget-boolean p1, p1, Landroidx/compose/material3/ThumbElement;->checked:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/ThumbElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/material3/ThumbElement;->checked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThumbElement(interactionSource="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/material3/ThumbElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/material3/ThumbElement;->checked:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Landroidx/compose/material3/ThumbNode;

    iget-object v0, p0, Landroidx/compose/material3/ThumbElement;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object v0, p1, Landroidx/compose/material3/ThumbNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-boolean v0, p1, Landroidx/compose/material3/ThumbNode;->checked:Z

    iget-boolean p0, p0, Landroidx/compose/material3/ThumbElement;->checked:Z

    if-eq v0, p0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    :cond_0
    iput-boolean p0, p1, Landroidx/compose/material3/ThumbNode;->checked:Z

    iget-object p0, p1, Landroidx/compose/material3/ThumbNode;->sizeAnim:Landroidx/compose/animation/core/Animatable;

    if-nez p0, :cond_1

    iget p0, p1, Landroidx/compose/material3/ThumbNode;->initialSize:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Landroidx/compose/material3/ThumbNode;->initialSize:F

    invoke-static {p0}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object p0

    iput-object p0, p1, Landroidx/compose/material3/ThumbNode;->sizeAnim:Landroidx/compose/animation/core/Animatable;

    :cond_1
    iget-object p0, p1, Landroidx/compose/material3/ThumbNode;->offsetAnim:Landroidx/compose/animation/core/Animatable;

    if-nez p0, :cond_2

    iget p0, p1, Landroidx/compose/material3/ThumbNode;->initialOffset:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_2

    iget p0, p1, Landroidx/compose/material3/ThumbNode;->initialOffset:F

    invoke-static {p0}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object p0

    iput-object p0, p1, Landroidx/compose/material3/ThumbNode;->offsetAnim:Landroidx/compose/animation/core/Animatable;

    :cond_2
    return-void
.end method
