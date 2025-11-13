.class final Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $animateActiveTrackColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $colors:Landroidx/compose/material3/SliderColors;

.field final synthetic $description:Ljava/lang/String;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isDragging:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $value:F

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FLandroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/compose/material3/SliderColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/ranges/ClosedFloatingPointRange;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$value:F

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$description:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$enabled:Z

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$colors:Landroidx/compose/material3/SliderColors;

    iput-object p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput-object p9, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$animateActiveTrackColor$delegate:Landroidx/compose/runtime/State;

    iput-object p10, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$state:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$isDragging:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0xe

    if-nez v4, :cond_1

    move-object v4, v2

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

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

    goto/16 :goto_2

    :cond_3
    :goto_1
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget v4, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$value:F

    iget-object v5, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v11, v2

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x7b31b209

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$description:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$description:Ljava/lang/String;

    invoke-virtual {v11}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_4

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v2, :cond_5

    :cond_4
    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$1$1;

    invoke-direct {v7, v6}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$1$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5, v2, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-boolean v5, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$enabled:Z

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$colors:Landroidx/compose/material3/SliderColors;

    iget-object v8, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$animateActiveTrackColor$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/Color;

    iget-wide v8, v8, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v7, v8, v9}, Landroidx/compose/material3/SliderColors;->copy--K518z4$default(Landroidx/compose/material3/SliderColors;J)Landroidx/compose/material3/SliderColors;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    new-instance v9, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;

    iget-object v10, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$state:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$isDragging:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$colors:Landroidx/compose/material3/SliderColors;

    iget-object v14, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$animateActiveTrackColor$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v9, v10, v12, v13, v14}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SliderColors;Landroidx/compose/runtime/State;)V

    const v10, 0x175dc571

    invoke-static {v10, v11, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$3;

    iget-object v12, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$state:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$isDragging:Landroidx/compose/runtime/MutableState;

    iget-object v14, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$colors:Landroidx/compose/material3/SliderColors;

    iget-object v15, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$animateActiveTrackColor$delegate:Landroidx/compose/runtime/State;

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$3;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SliderColors;Landroidx/compose/runtime/State;)V

    const v12, 0x12d89110

    invoke-static {v12, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    iget-object v12, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    shl-int/lit8 v0, v3, 0x3

    and-int/lit8 v0, v0, 0x70

    const/high16 v3, 0x36000000

    or-int v13, v0, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x80

    move v0, v4

    move v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v14

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move v12, v13

    move v13, v15

    move/from16 v14, v16

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/SliderKt;->Slider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;III)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
