.class final Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;
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

.field final synthetic $isDragging:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
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


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material3/SliderColors;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/material3/SliderColors;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;->$state:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;->$isDragging:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;->$colors:Landroidx/compose/material3/SliderColors;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;->$animateActiveTrackColor$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/material3/SliderState;

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p3, p2, 0xe

    const/4 v0, 0x2

    if-nez p3, :cond_1

    move-object p3, v6

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    or-int/2addr p2, p3

    :cond_1
    and-int/lit8 p2, p2, 0x5b

    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    move-object p2, v6

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;->$state:Landroidx/compose/runtime/MutableState;

    invoke-interface {p2, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;->$isDragging:Landroidx/compose/runtime/MutableState;

    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/16 p3, 0x16

    int-to-float p3, p3

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->thumbSize:F

    sub-float/2addr p3, v5

    int-to-float v0, v0

    div-float/2addr p3, v0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v0, p3, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;->$colors:Landroidx/compose/material3/SliderColors;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$4$2;->$animateActiveTrackColor$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    iget-wide v3, p0, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {p2, v3, v4}, Landroidx/compose/material3/SliderColors;->copy--K518z4$default(Landroidx/compose/material3/SliderColors;J)Landroidx/compose/material3/SliderColors;

    move-result-object v3

    const/4 v4, 0x0

    const v7, 0x36036

    const/16 v8, 0x8

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults;->Thumb-FJfuzF0(Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZFLandroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
