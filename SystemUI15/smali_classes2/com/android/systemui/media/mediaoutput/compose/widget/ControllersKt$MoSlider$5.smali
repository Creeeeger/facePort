.class final Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;
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

.field final synthetic $colors:Landroidx/compose/material3/SliderColors;

.field final synthetic $description:Ljava/lang/String;

.field final synthetic $earShockValue:F

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
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
.method public constructor <init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/ranges/ClosedFloatingPointRange;FLjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/compose/material3/SliderColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/ranges/ClosedFloatingPointRange;",
            "F",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$value:F

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$enabled:Z

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$colors:Landroidx/compose/material3/SliderColors;

    iput-object p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput p9, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$earShockValue:F

    iput-object p10, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$description:Ljava/lang/String;

    iput p11, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$$changed:I

    iput p12, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$$default:I

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

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$value:F

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$enabled:Z

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$colors:Landroidx/compose/material3/SliderColors;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget v8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$earShockValue:F

    iget-object v9, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$description:Ljava/lang/String;

    iget p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$5;->$$default:I

    invoke-static/range {v0 .. v12}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt;->MoSlider(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/ranges/ClosedFloatingPointRange;FLjava/lang/String;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
