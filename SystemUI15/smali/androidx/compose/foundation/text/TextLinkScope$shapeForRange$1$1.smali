.class public final Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# instance fields
.field public final synthetic $it:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;->$it:Landroidx/compose/ui/graphics/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 0

    new-instance p1, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;->$it:Landroidx/compose/ui/graphics/Path;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    return-object p1
.end method
