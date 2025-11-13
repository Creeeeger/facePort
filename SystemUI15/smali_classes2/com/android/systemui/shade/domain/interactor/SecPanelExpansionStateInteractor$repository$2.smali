.class final Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2$1;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2;->this$0:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
