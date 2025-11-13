.class final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;
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
.field final synthetic $hapticFeedback:Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/ranges/ClosedFloatingPointRange;",
            "Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;->$hapticFeedback:Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v0, Lkotlin/ranges/ClosedFloatRange;

    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_start:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    check-cast v0, Lkotlin/ranges/ClosedFloatRange;

    iget v0, v0, Lkotlin/ranges/ClosedFloatRange;->_endInclusive:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$3;->$hapticFeedback:Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/systemui/media/mediaoutput/wrapper/SecHapticFeedbackType;->Seekbar:Lcom/android/systemui/media/mediaoutput/wrapper/SecHapticFeedbackType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/wrapper/SecPlatformHapticFeedback;->performHapticFeedback(Lcom/android/systemui/media/mediaoutput/wrapper/SecHapticFeedbackType;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
