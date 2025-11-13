.class final Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;
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
.field final synthetic $initValue:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $isRtl:Z

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $prevValue:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $range$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/SliderState;

.field final synthetic $x:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/SliderState;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Landroidx/compose/material3/SliderState;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$isRtl:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$x:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$initValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$state:Landroidx/compose/material3/SliderState;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$prevValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$range$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    iget-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$isRtl:Z

    iget-wide v0, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$x:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p2

    :goto_0
    sub-float/2addr p1, p2

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$x:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$initValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$range$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$state:Landroidx/compose/material3/SliderState;

    iget-object p2, p2, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$prevValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v0, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iput p1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;->$onValueChange:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
