.class final Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;
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
.field final synthetic $dragState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $initValue:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $state:Landroidx/compose/material3/SliderState;

.field final synthetic $x:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Landroidx/compose/material3/SliderState;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;->$x:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;->$initValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;->$state:Landroidx/compose/material3/SliderState;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;->$dragState:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;->$x:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    iput v0, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;->$initValue:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;->$state:Landroidx/compose/material3/SliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/SliderState;->getValue()F

    move-result v0

    iput v0, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;->$dragState:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
