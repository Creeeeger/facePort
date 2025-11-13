.class public final Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor$listenForOccludedToLockscreenOrHub$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor$listenForOccludedToLockscreenOrHub$2$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/util/kotlin/Quint;

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component4()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/util/kotlin/Quint;->component5()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor$listenForOccludedToLockscreenOrHub$2$2;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor;

    invoke-static {p0, p0, v0, v1, p2}, Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor;->access$startTransitionToLockscreenOrHub(Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/FromOccludedTransitionInteractor;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method
