.class public final Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$1$1;->this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$1$1;->this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;

    iget-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;->simBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/domain/interactor/SimBouncerInteractor;->resetSimPukUserInput()V

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;->mutablePinInput:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;->clearAll()Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
