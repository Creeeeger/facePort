.class public final Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor$listenForTransitionToUpdateTutorialState$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor$listenForTransitionToUpdateTutorialState$1$3;->this$0:Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor$listenForTransitionToUpdateTutorialState$1$3;->this$0:Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;->communalTutorialRepository:Lcom/android/systemui/communal/data/repository/CommunalTutorialRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalTutorialDisabledRepositoryImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method
