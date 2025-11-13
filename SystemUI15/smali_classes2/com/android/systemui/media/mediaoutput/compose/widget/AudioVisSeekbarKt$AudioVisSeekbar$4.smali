.class final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;
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
.field final synthetic $colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

.field final synthetic $enabled:Z

.field final synthetic $isDragging:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $thumbVisible:Z


# direct methods
.method public constructor <init>(ZLandroidx/compose/runtime/MutableState;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/MutableState;",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;",
            "Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;->$thumbVisible:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;->$isDragging:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iput-boolean p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;->$enabled:Z

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

    move-result p1

    and-int/lit8 p1, p1, 0x51

    const/16 p2, 0x10

    if-ne p1, p2, :cond_1

    move-object p1, v6

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;->$thumbVisible:Z

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;->$isDragging:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$4;->$enabled:Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    const v7, 0x30006

    const/16 v8, 0x12

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->Thumb-FJfuzF0(Landroidx/compose/runtime/State;Landroidx/compose/ui/Modifier;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;ZFLandroidx/compose/runtime/Composer;II)V

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
