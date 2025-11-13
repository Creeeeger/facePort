.class public final Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$1$3;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/ui/adapter/CustomizerState;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$1$3;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSImpl;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;->Companion:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Companion;->QS:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$Expanding;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/qs/ui/adapter/CustomizerState;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide(Z)V

    :cond_0
    invoke-static {p0, v0, p2}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->access$applyState(Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;Lcom/android/systemui/qs/QSImpl;Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
