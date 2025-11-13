.class final Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $range$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/SliderState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderState;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$1;->$state:Landroidx/compose/material3/SliderState;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$1;->$range$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    iget-wide v0, p1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$1;->$range$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$1;->$state:Landroidx/compose/material3/SliderState;

    iget-object v1, v1, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v1, Lkotlin/ranges/ClosedFloatRange;

    iget v1, v1, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$1;->$state:Landroidx/compose/material3/SliderState;

    iget-object p0, p0, Landroidx/compose/material3/SliderState;->valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast p0, Lkotlin/ranges/ClosedFloatRange;

    iget p0, p0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    sget-object p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
