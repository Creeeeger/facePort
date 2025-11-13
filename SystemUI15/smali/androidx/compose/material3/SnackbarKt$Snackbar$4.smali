.class final Landroidx/compose/material3/SnackbarKt$Snackbar$4;
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

.field final synthetic $actionColor:J

.field final synthetic $actionContentColor:J

.field final synthetic $actionOnNewLine:Z

.field final synthetic $containerColor:J

.field final synthetic $contentColor:J

.field final synthetic $dismissActionContentColor:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $snackbarData:Landroidx/compose/material3/SnackbarData;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJII)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$snackbarData:Landroidx/compose/material3/SnackbarData;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$modifier:Landroidx/compose/ui/Modifier;

    move v1, p3

    iput-boolean v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$actionOnNewLine:Z

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$containerColor:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$contentColor:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$actionColor:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$actionContentColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$dismissActionContentColor:J

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$$changed:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$snackbarData:Landroidx/compose/material3/SnackbarData;

    iget-object v2, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$actionOnNewLine:Z

    iget-object v4, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v5, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$containerColor:J

    iget-wide v7, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$contentColor:J

    iget-wide v9, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$actionColor:J

    iget-wide v11, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$actionContentColor:J

    iget-wide v13, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$dismissActionContentColor:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v0, v0, Landroidx/compose/material3/SnackbarKt$Snackbar$4;->$$default:I

    move/from16 v17, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/SnackbarKt;->Snackbar-sDKtq54(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
