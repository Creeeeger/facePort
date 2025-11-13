.class final Landroidx/compose/material3/TextFieldKt$TextField$3;
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
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

.field final synthetic $keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

.field final synthetic $label:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $maxLines:I

.field final synthetic $mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $minLines:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $prefix:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $readOnly:Z

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

.field final synthetic $suffix:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $supportingText:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    move v1, p2

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$isError:Z

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    move v1, p6

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$enabled:Z

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$readOnly:Z

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    move v1, p11

    iput-boolean v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$singleLine:Z

    move v1, p12

    iput v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$maxLines:I

    move v1, p13

    iput v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$minLines:I

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$label:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$prefix:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p21

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$suffix:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p22

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$supportingText:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p23

    iput-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v15

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$isError:Z

    const v3, 0x7f140c0a

    invoke-static {v15, v3}, Landroidx/compose/material3/internal/Strings_androidKt;->getString-2EP1pXo(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroidx/compose/material3/internal/TextFieldImplKt;->defaultErrorSemantics(Landroidx/compose/ui/Modifier;ZLjava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget v2, Landroidx/compose/material3/TextFieldDefaults;->MinWidth:F

    sget v3, Landroidx/compose/material3/TextFieldDefaults;->MinHeight:F

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    iget-object v14, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-boolean v12, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$isError:Z

    if-eqz v12, :cond_2

    iget-wide v1, v14, Landroidx/compose/material3/TextFieldColors;->errorCursorColor:J

    goto :goto_1

    :cond_2
    iget-wide v1, v14, Landroidx/compose/material3/TextFieldColors;->cursorColor:J

    :goto_1
    invoke-direct {v13, v1, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    iget-object v11, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v1, v11

    iget-object v2, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-boolean v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$enabled:Z

    move v4, v10

    iget-boolean v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$readOnly:Z

    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$mergedTextStyle:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    iget-boolean v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$singleLine:Z

    move/from16 v19, v9

    move/from16 v16, v10

    iget v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$maxLines:I

    move/from16 v18, v16

    move-object/from16 v16, v11

    iget v11, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$minLines:I

    move-object/from16 v17, v16

    move-object/from16 p1, v13

    iget-object v13, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move/from16 v22, v12

    move-object v12, v13

    move-object/from16 p2, v1

    iget-object v1, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v31, v14

    move-object v14, v1

    move-object/from16 v32, v2

    new-instance v2, Landroidx/compose/material3/TextFieldKt$TextField$3$1;

    move/from16 v33, v4

    iget-object v4, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$label:Lkotlin/jvm/functions/Function2;

    move/from16 v34, v5

    iget-object v5, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object/from16 v35, v6

    iget-object v6, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v36, v7

    iget-object v7, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object/from16 v37, v8

    iget-object v8, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$prefix:Lkotlin/jvm/functions/Function2;

    move/from16 v38, v9

    iget-object v9, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$suffix:Lkotlin/jvm/functions/Function2;

    move/from16 v39, v10

    iget-object v10, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$supportingText:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Landroidx/compose/material3/TextFieldKt$TextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    move-object/from16 v21, v1

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v0

    invoke-direct/range {v16 .. v31}, Landroidx/compose/material3/TextFieldKt$TextField$3$1;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;)V

    const v0, 0x686cc1da

    invoke-static {v0, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    const/high16 v19, 0x30000

    const/16 v20, 0x1000

    const/4 v13, 0x0

    move-object/from16 v0, p1

    const/16 v18, 0x0

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v17, v1

    move-object/from16 v1, p2

    move-object/from16 v2, v32

    move/from16 v4, v33

    move/from16 v5, v34

    move-object/from16 v6, v35

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move/from16 v9, v38

    move/from16 v10, v39

    invoke-static/range {v1 .. v20}, Landroidx/compose/foundation/text/BasicTextFieldKt;->BasicTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
