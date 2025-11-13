.class final Landroidx/compose/material3/TextFieldDefaults$Container$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $focusedIndicatorLineThickness:F

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $tmp0_rcvr:Landroidx/compose/material3/TextFieldDefaults;

.field final synthetic $unfocusedIndicatorLineThickness:F


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TextFieldDefaults;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFII)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$tmp0_rcvr:Landroidx/compose/material3/TextFieldDefaults;

    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$isError:Z

    iput-object p4, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p5, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput-object p7, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput p8, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$focusedIndicatorLineThickness:F

    iput p9, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$unfocusedIndicatorLineThickness:F

    iput p10, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$$changed:I

    iput p11, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$tmp0_rcvr:Landroidx/compose/material3/TextFieldDefaults;

    iget-boolean v1, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$enabled:Z

    iget-boolean v2, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$isError:Z

    iget-object v3, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v4, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-object v6, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget v7, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$focusedIndicatorLineThickness:F

    iget v8, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$unfocusedIndicatorLineThickness:F

    iget p1, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    iget v11, p0, Landroidx/compose/material3/TextFieldDefaults$Container$2;->$$default:I

    invoke-virtual/range {v0 .. v11}, Landroidx/compose/material3/TextFieldDefaults;->Container-4EFweAY(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
