.class public final Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# instance fields
.field public final synthetic $it:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/AndroidPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;->$it:Landroidx/compose/ui/graphics/Path;

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
