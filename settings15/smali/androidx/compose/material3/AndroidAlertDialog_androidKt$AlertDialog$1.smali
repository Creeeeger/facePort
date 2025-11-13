.class final Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;
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

.field final synthetic $confirmButton:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $containerColor:J

.field final synthetic $dismissButton:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $icon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $iconContentColor:J

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onDismissRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $properties:Landroidx/compose/ui/window/DialogProperties;

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
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;III)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$confirmButton:Lkotlin/jvm/functions/Function2;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$dismissButton:Lkotlin/jvm/functions/Function2;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$icon:Lkotlin/jvm/functions/Function2;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$title:Lkotlin/jvm/functions/Function2;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$text:Lkotlin/jvm/functions/Function2;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$containerColor:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$iconContentColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$titleContentColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$textContentColor:J

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$tonalElevation:F

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$properties:Landroidx/compose/ui/window/DialogProperties;

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$$changed:I

    move/from16 v1, p20

    iput v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$$changed1:I

    move/from16 v1, p21

    iput v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v19, p1

    check-cast v19, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$onDismissRequest:Lkotlin/jvm/functions/Function0;

    iget-object v2, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$confirmButton:Lkotlin/jvm/functions/Function2;

    iget-object v3, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v4, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$dismissButton:Lkotlin/jvm/functions/Function2;

    iget-object v5, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$icon:Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$title:Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$text:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v9, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$containerColor:J

    iget-wide v11, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$iconContentColor:J

    iget-wide v13, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$titleContentColor:J

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$textContentColor:J

    move-wide v15, v1

    iget v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$tonalElevation:F

    move/from16 v17, v1

    iget-object v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$properties:Landroidx/compose/ui/window/DialogProperties;

    move-object/from16 v18, v1

    iget v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v20

    iget v1, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v21

    iget v0, v0, Landroidx/compose/material3/AndroidAlertDialog_androidKt$AlertDialog$1;->$$default:I

    move/from16 v22, v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v22}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
