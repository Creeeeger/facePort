.class final Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;
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

.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $expandedState:Landroidx/compose/animation/core/MutableTransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/MutableTransitionState;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;

.field final synthetic $shadowElevation:F

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $tonalElevation:F

.field final synthetic $transformOriginState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$expandedState:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p3, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$scrollState:Landroidx/compose/foundation/ScrollState;

    iput-object p5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$containerColor:J

    iput p8, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$tonalElevation:F

    iput p9, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$shadowElevation:F

    iput-object p10, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$border:Landroidx/compose/foundation/BorderStroke;

    iput-object p11, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$content:Lkotlin/jvm/functions/Function3;

    iput p12, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$expandedState:Landroidx/compose/animation/core/MutableTransitionState;

    iget-object v2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$scrollState:Landroidx/compose/foundation/ScrollState;

    iget-object v4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$containerColor:J

    iget v7, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$tonalElevation:F

    iget v8, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$shadowElevation:F

    iget-object v9, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$border:Landroidx/compose/foundation/BorderStroke;

    iget-object v10, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$content:Lkotlin/jvm/functions/Function3;

    iget p0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuContent$3;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/MenuKt;->DropdownMenuContent-Qj0Zi0g(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
