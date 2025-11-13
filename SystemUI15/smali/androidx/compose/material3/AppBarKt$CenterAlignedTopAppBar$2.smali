.class final Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;
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

.field final synthetic $actions:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $colors:Landroidx/compose/material3/TopAppBarColors;

.field final synthetic $expandedHeight:F

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $navigationIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field final synthetic $title:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function3;",
            "F",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/material3/TopAppBarColors;",
            "Landroidx/compose/material3/TopAppBarScrollBehavior;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$title:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$actions:Lkotlin/jvm/functions/Function3;

    iput p5, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$expandedHeight:F

    iput-object p6, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p7, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$colors:Landroidx/compose/material3/TopAppBarColors;

    iput-object p8, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput p9, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$$changed:I

    iput p10, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$actions:Lkotlin/jvm/functions/Function3;

    iget v4, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$expandedHeight:F

    iget-object v5, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v6, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$colors:Landroidx/compose/material3/TopAppBarColors;

    iget-object v7, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iget p1, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Landroidx/compose/material3/AppBarKt$CenterAlignedTopAppBar$2;->$$default:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/AppBarKt;->CenterAlignedTopAppBar-GHTll3U(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
