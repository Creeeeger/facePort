.class public final Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$4$1;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/shade/shared/model/ShadeMode;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2$4$1;->this$0:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    sget-object p2, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;->INSTANCE:Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setInSplitShade(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
