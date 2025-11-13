.class final Landroidx/compose/foundation/contextmenu/ContextMenuScope$Content$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $colors:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

.field final synthetic $tmp0_rcvr:Landroidx/compose/foundation/contextmenu/ContextMenuScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/contextmenu/ContextMenuScope;Landroidx/compose/foundation/contextmenu/ContextMenuColors;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/contextmenu/ContextMenuScope$Content$2;->$tmp0_rcvr:Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    iput-object p2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuScope$Content$2;->$colors:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    iput p3, p0, Landroidx/compose/foundation/contextmenu/ContextMenuScope$Content$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Landroidx/compose/foundation/contextmenu/ContextMenuScope$Content$2;->$tmp0_rcvr:Landroidx/compose/foundation/contextmenu/ContextMenuScope;

    iget-object v0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuScope$Content$2;->$colors:Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    iget p0, p0, Landroidx/compose/foundation/contextmenu/ContextMenuScope$Content$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-virtual {p2, v0, p1, p0}, Landroidx/compose/foundation/contextmenu/ContextMenuScope;->Content$foundation_release(Landroidx/compose/foundation/contextmenu/ContextMenuColors;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
