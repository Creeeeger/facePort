.class final Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;
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
.field final synthetic $label:Ljava/lang/String;

.field final synthetic $viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;Ljava/lang/String;Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xb

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    move-object p1, v10

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    iget-boolean p1, p1, Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;->isActive:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    move-object p1, v10

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x9a995b7

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    iget-wide v1, v1, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    invoke-static {p1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    iget-wide v3, v3, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xc

    move-wide v0, v1

    move-wide v2, v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object p1, v10

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x9a996d7

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sget-object v3, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v3

    iget-wide v3, v3, Landroidx/compose/material3/ColorScheme;->onSurfaceVariant:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0xc

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ButtonColors;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :goto_2
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    const/16 p1, 0x8

    int-to-float p1, p1

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$1;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->$label:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$1;-><init>(Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 p1, 0x14

    int-to-float p1, p1

    invoke-static {p1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    int-to-float p1, p2

    invoke-static {p1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$2;

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;

    iget-object p2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$2;-><init>(Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent;Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;)V

    new-instance p1, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$3;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ToggleButtonComponent$Content$1$1$3;-><init>(Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;)V

    const p0, 0x69ed35c6

    invoke-static {p0, v10, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/high16 v11, 0x30c00000

    const/16 v12, 0x164

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
