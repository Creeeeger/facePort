.class public final Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final repository:Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;->repository:Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;

    return-void
.end method


# virtual methods
.method public final setVisible(Z)V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor$setVisible$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor$setVisible$1;-><init>(Z)V

    iget-object p0, p0, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;->repository:Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;->mutableGlobalState:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor$setVisible$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void
.end method
