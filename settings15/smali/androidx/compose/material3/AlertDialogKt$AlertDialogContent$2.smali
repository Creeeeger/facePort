.class final Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;
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

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $buttonContentColor:J

.field final synthetic $buttons:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $containerColor:J

.field final synthetic $icon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $iconContentColor:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $text:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $textContentColor:J

.field final synthetic $title:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $titleContentColor:J

.field final synthetic $tonalElevation:F


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJJIII)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$buttons:Lkotlin/jvm/functions/Function2;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$icon:Lkotlin/jvm/functions/Function2;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$title:Lkotlin/jvm/functions/Function2;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$text:Lkotlin/jvm/functions/Function2;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$containerColor:J

    move v1, p9

    iput v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$tonalElevation:F

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$buttonContentColor:J

    move-wide v1, p12

    iput-wide v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$iconContentColor:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$titleContentColor:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$textContentColor:J

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$$changed:I

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$$changed1:I

    move/from16 v1, p20

    iput v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$buttons:Lkotlin/jvm/functions/Function2;

    iget-object v2, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$icon:Lkotlin/jvm/functions/Function2;

    iget-object v4, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$text:Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$containerColor:J

    iget v9, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$tonalElevation:F

    iget-wide v10, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$buttonContentColor:J

    iget-wide v12, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$iconContentColor:J

    iget-wide v14, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$titleContentColor:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$textContentColor:J

    move-wide/from16 v16, v1

    iget v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v19

    iget v1, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v20

    iget v0, v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogContent$2;->$$default:I

    move/from16 v21, v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v21}, Landroidx/compose/material3/AlertDialogKt;->AlertDialogContent-4hvqGtA(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JFJJJJLandroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
