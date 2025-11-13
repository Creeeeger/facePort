.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    new-instance p2, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1$1;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$init$1$1$3$1$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;F)V

    const/4 p0, 0x3

    invoke-static {p0, p2}, Lcom/android/systemui/complication/ComplicationLayoutParams;->iteratePositions(ILjava/util/function/Consumer;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
