.class final Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;
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

.field final synthetic $dragState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $sliderState:Landroidx/compose/material3/SliderState;

.field final synthetic $tmp4_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;",
            "Landroidx/compose/material3/SliderState;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/SliderColors;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$tmp4_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$sliderState:Landroidx/compose/material3/SliderState;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$dragState:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$colors:Landroidx/compose/material3/SliderColors;

    iput p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$$changed:I

    iput p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$tmp4_rcvr:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$dragState:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$colors:Landroidx/compose/material3/SliderColors;

    iget p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$Track$3;->$$default:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->Track(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
