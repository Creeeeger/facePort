.class public final Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $isDragging:Landroidx/compose/runtime/MutableState;

.field public final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1$1;->$isDragging:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    instance-of p2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1$1;->$isDragging:Landroidx/compose/runtime/MutableState;

    if-eqz p2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of p2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
