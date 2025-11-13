.class final Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;
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
.field final synthetic $gravity$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $label:Ljava/lang/String;

.field final synthetic $viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$label:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$gravity$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {p2, v0}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    const/16 p2, 0x8

    int-to-float p2, p2

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v0, p2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p2

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const p1, -0x5c836d1b

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$label:Ljava/lang/String;

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$label:Ljava/lang/String;

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_2

    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, p1, :cond_3

    :cond_2
    new-instance v1, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1$1$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1$1$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p2, p1, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object p2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    iget-boolean p2, p2, Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;->isActive:Z

    if-eqz p2, :cond_4

    const p2, -0x5c836c14

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object p2

    iget-wide v0, p2, Landroidx/compose/material3/ColorScheme;->tertiaryContainer:J

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :cond_4
    const p2, -0x5c836bab

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object p2

    iget-wide v0, p2, Landroidx/compose/material3/ColorScheme;->surface:J

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    const/16 p2, 0x14

    int-to-float p2, p2

    invoke-static {p2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    iget-object p2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    iget-boolean p2, p2, Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;->isActive:Z

    if-eqz p2, :cond_5

    const p2, -0x5c836ac6

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object p2

    iget-wide v4, p2, Landroidx/compose/material3/ColorScheme;->onTertiaryContainer:J

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_5
    const p2, -0x5c836a5b

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object p2

    iget-wide v4, p2, Landroidx/compose/material3/ColorScheme;->onSurface:J

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    new-instance v7, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1$2;

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->this$0:Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent;

    iget-object p2, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$gravity$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {v7, p1, p2}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1$2;-><init>(Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent;Landroidx/compose/runtime/MutableIntState;)V

    new-instance p1, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1$3;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1;->$viewModel:Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/panel/component/button/ui/composable/ButtonComponent$Content$2$1$3;-><init>(Lcom/android/systemui/volume/panel/component/button/ui/viewmodel/ButtonViewModel;)V

    const p0, 0x7fdd4e1a

    invoke-static {p0, v10, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/high16 v11, 0xc00000

    const/16 v12, 0x50

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Lcom/android/compose/animation/ExpandableKt;->Expandable-QIcBpto(JLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
