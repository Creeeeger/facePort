.class public final Landroidx/compose/foundation/layout/HorizontalAlignElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final horizontal:Landroidx/compose/ui/Alignment$Horizontal;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Horizontal;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/HorizontalAlignNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/HorizontalAlignNode;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object p1, p1, Landroidx/compose/foundation/layout/HorizontalAlignElement;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/HorizontalAlignNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/HorizontalAlignElement;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p0, p1, Landroidx/compose/foundation/layout/HorizontalAlignNode;->horizontal:Landroidx/compose/ui/Alignment$Horizontal;

    return-void
.end method
