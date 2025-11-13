.class final Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
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

.field final synthetic $isRtl:Z

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $range$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/SliderState;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderState;",
            "Landroidx/compose/runtime/MutableState;",
            "Z",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/runtime/MutableState;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$state:Landroidx/compose/material3/SliderState;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$dragState:Landroidx/compose/runtime/MutableState;

    iput-boolean p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$isRtl:Z

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$range$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$state:Landroidx/compose/material3/SliderState;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$dragState:Landroidx/compose/runtime/MutableState;

    iget-boolean v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$isRtl:Z

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$range$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;-><init>(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputScope;

    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$state:Landroidx/compose/material3/SliderState;

    invoke-virtual {p1}, Landroidx/compose/material3/SliderState;->getValue()F

    move-result p1

    iput p1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget p1, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput p1, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance p1, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$state:Landroidx/compose/material3/SliderState;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$dragState:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v6, v7, v1, v4}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;)V

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$2;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$state:Landroidx/compose/material3/SliderState;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$dragState:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v4, v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$2;-><init>(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;)V

    new-instance v12, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$3;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$state:Landroidx/compose/material3/SliderState;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$dragState:Landroidx/compose/runtime/MutableState;

    invoke-direct {v12, v4, v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$3;-><init>(Landroidx/compose/material3/SliderState;Landroidx/compose/runtime/MutableState;)V

    new-instance v13, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;

    iget-boolean v5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$isRtl:Z

    iget-object v8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$state:Landroidx/compose/material3/SliderState;

    iget-object v10, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v11, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->$range$delegate:Landroidx/compose/runtime/MutableState;

    move-object v4, v13

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2$4;-><init>(ZLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/material3/SliderState;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SeekbarDefaults$SliderContainer$1$2$2;->label:I

    move-object v4, p1

    move-object v5, v1

    move-object v6, v12

    move-object v7, v13

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectHorizontalDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
