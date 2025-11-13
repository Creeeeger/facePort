.class final Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/material3/ExposedDropdownMenuBoxScope;",
        "invoke",
        "(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $errorMessage:Ljava/lang/String;

.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $label:Ljava/lang/String;

.field final synthetic $scope:Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;

.field final synthetic $singleLine:Z

.field final synthetic $text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$errorMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$text:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$enabled:Z

    iput-boolean p4, p0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$singleLine:Z

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$label:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$content:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$scope:Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "$this$ExposedDropdownMenuBox"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v4, v3, 0xe

    if-nez v4, :cond_1

    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v3, v4

    :cond_1
    and-int/lit8 v4, v3, 0x5b

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_3
    :goto_1
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->menuAnchor-fsE2BvY$default(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v6}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    iget-object v5, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$errorMessage:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    const/4 v7, 0x1

    move/from16 v20, v7

    goto :goto_2

    :cond_4
    move/from16 v20, v6

    :goto_2
    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    const v7, -0x1753022c

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v5, :cond_5

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v19, v5

    goto :goto_4

    :cond_5
    new-instance v7, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$1$1;

    invoke-direct {v7, v5}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$1$1;-><init>(Ljava/lang/String;)V

    const v5, 0x78474640

    invoke-static {v5, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    goto :goto_3

    :goto_4
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v7, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$text:Ljava/lang/String;

    sget-object v8, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$2;->INSTANCE:Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$2;

    iget-boolean v10, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$enabled:Z

    new-instance v5, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$3;

    iget-object v11, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$label:Ljava/lang/String;

    invoke-direct {v5, v11}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$3;-><init>(Ljava/lang/String;)V

    const v11, -0x43e6d59

    invoke-static {v11, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    new-instance v5, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$4;

    iget-object v11, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v5, v11}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$4;-><init>(Landroidx/compose/runtime/MutableState;)V

    const v11, -0x7a035ffc

    invoke-static {v11, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v16

    iget-boolean v5, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$singleLine:Z

    move/from16 v24, v5

    const/16 v33, 0x0

    const v34, 0x7dcda0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v31, 0x30186030

    const/16 v32, 0x0

    move-object/from16 v30, v2

    invoke-static/range {v7 .. v34}, Landroidx/compose/material3/OutlinedTextFieldKt;->OutlinedTextField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;IIII)V

    iget-object v5, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    sget v5, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt;->Width:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v17

    const v4, -0x1753017a

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v7, :cond_6

    new-instance v5, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$5$1;

    invoke-direct {v5, v4}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$5$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v18, v5

    check-cast v18, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v4, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$6;

    iget-object v5, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$content:Lkotlin/jvm/functions/Function3;

    iget-object v0, v0, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2;->$scope:Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;

    invoke-direct {v4, v5, v0}, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$2$6;-><init>(Lkotlin/jvm/functions/Function3;Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxKt$DropdownTextBox$scope$1$1;)V

    const v0, 0x25f62b4b

    invoke-static {v0, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    shl-int/lit8 v0, v3, 0x3

    and-int/lit8 v0, v0, 0x70

    const/4 v3, 0x6

    or-int v15, v3, v0

    const/4 v10, 0x0

    const/16 v16, 0x3f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x1b0

    move-object v0, v1

    move v1, v13

    move-object v13, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    invoke-virtual/range {v0 .. v16}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->ExposedDropdownMenu-vNxi1II(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
