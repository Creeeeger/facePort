.class public final Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backlight:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final keyboardRepository:Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;->keyboardRepository:Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;

    check-cast p1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    new-instance v0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;)V

    iget-object p1, p1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->isAnyKeyboardConnected:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/domain/interactor/KeyboardBacklightInteractor;->backlight:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
