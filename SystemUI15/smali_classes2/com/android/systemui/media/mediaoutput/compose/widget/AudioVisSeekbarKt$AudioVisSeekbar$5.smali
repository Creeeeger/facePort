.class final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;
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
.field final synthetic $animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

.field final synthetic $colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

.field final synthetic $enabled:Z

.field final synthetic $isDragging:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;ZLcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Z",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$isDragging:Landroidx/compose/runtime/MutableState;

    iput-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$enabled:Z

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v1, p1

    check-cast v1, Landroidx/compose/material3/SliderState;

    move-object v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0xe

    if-nez p2, :cond_1

    move-object p2, v8

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p1, p2

    :cond_1
    and-int/lit8 p2, p1, 0x5b

    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    move-object p2, v8

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

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$isDragging:Landroidx/compose/runtime/MutableState;

    iget-boolean v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$enabled:Z

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    iget-object v7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$5;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    const p0, 0xc00038

    and-int/lit8 p1, p1, 0xe

    or-int v9, p0, p1

    const/4 v10, 0x4

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->Track(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;ZLcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;Landroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
