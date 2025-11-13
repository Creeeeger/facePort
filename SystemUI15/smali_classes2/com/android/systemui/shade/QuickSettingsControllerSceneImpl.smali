.class public final Lcom/android/systemui/shade/QuickSettingsControllerSceneImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/QuickSettingsController;


# instance fields
.field public final qsSceneAdapter:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerSceneImpl;->qsSceneAdapter:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;

    return-void
.end method


# virtual methods
.method public final closeQs()V
    .locals 0

    return-void
.end method

.method public final closeQsCustomizer()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerSceneImpl;->qsSceneAdapter:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;

    check-cast p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->closeCustomizer()V

    :cond_0
    return-void
.end method

.method public final getExpanded$1()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerSceneImpl;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getSecQuickSettingsControllerImpl$1()Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isCustomizing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerSceneImpl;->qsSceneAdapter:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;

    check-cast p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->isCustomizerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
