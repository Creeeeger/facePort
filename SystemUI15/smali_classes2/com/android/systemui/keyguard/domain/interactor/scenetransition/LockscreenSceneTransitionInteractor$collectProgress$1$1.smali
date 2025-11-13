.class public final Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor$collectProgress$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor$collectProgress$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor$collectProgress$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;

    iget-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;->currentTransitionId:Ljava/util/UUID;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/TransitionState;->RUNNING:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/scenetransition/LockscreenSceneTransitionInteractor;->transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->updateTransition(Ljava/util/UUID;FLcom/android/systemui/keyguard/shared/model/TransitionState;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
