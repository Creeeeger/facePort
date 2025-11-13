.class public final Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alpha:Lkotlinx/coroutines/flow/Flow;

.field public final communalTutorialInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;->communalTutorialInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalTutorialInteractor;

    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->alpha:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;->alpha:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
