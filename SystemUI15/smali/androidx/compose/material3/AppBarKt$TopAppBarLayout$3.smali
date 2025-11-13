.class final Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;
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

.field final synthetic $$changed1:I

.field final synthetic $actionIconContentColor:J

.field final synthetic $actions:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $hideTitleSemantics:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $navigationIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $navigationIconContentColor:J

.field final synthetic $scrolledOffset:Landroidx/compose/material3/ScrolledOffset;

.field final synthetic $title:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $titleAlpha:F

.field final synthetic $titleBottomPadding:I

.field final synthetic $titleContentColor:J

.field final synthetic $titleHorizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $titleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $titleVerticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ScrolledOffset;JJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/ScrolledOffset;",
            "JJJ",
            "Lkotlin/jvm/functions/Function2;",
            "Landroidx/compose/ui/text/TextStyle;",
            "F",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "IZ",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function2;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$scrolledOffset:Landroidx/compose/material3/ScrolledOffset;

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$navigationIconContentColor:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleContentColor:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$actionIconContentColor:J

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$title:Lkotlin/jvm/functions/Function2;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    move v1, p11

    iput v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleAlpha:F

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleVerticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleHorizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleBottomPadding:I

    move/from16 v1, p15

    iput-boolean v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$hideTitleSemantics:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$actions:Lkotlin/jvm/functions/Function2;

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$$changed:I

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$$changed1:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$scrolledOffset:Landroidx/compose/material3/ScrolledOffset;

    iget-wide v3, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$navigationIconContentColor:J

    iget-wide v5, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleContentColor:J

    iget-wide v7, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$actionIconContentColor:J

    iget-object v9, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget v11, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleAlpha:F

    iget-object v12, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleVerticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v13, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleHorizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget v14, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$titleBottomPadding:I

    iget-boolean v15, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$hideTitleSemantics:Z

    move-object/from16 p1, v1

    iget-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$navigationIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$actions:Lkotlin/jvm/functions/Function2;

    move-object/from16 v17, v1

    iget v1, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    iget v0, v0, Landroidx/compose/material3/AppBarKt$TopAppBarLayout$3;->$$changed1:I

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v20

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v20}, Landroidx/compose/material3/AppBarKt;->access$TopAppBarLayout-kXwM9vE(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ScrolledOffset;JJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
