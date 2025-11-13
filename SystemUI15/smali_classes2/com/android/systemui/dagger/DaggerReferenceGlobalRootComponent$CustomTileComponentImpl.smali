.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/impl/custom/di/CustomTileComponent;


# instance fields
.field public final customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

.field public customTileDataInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public customTileDefaultsRepositoryImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public customTileInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public customTilePackageUpdatesRepositoryImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public customTileRepositoryImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public customTileServiceInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public customTileUserActionInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public provideCustomTileCoroutineScopeProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public final qSTileConfigModule:Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->qSTileConfigModule:Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;

    invoke-virtual {p0, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->initialize(Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;)V

    return-void
.end method


# virtual methods
.method public final coroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->provideCustomTileCoroutineScopeProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public final customTileInteractor()Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileInteractor;

    return-object p0
.end method

.method public final customTileInterfaceInteractor()Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileServiceInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileServiceInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/interactor/CustomTileServiceInteractor;

    return-object p0
.end method

.method public final customTilePackageUpdatesRepository()Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTilePackageUpdatesRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTilePackageUpdatesRepositoryImplProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/custom/data/repository/CustomTilePackageUpdatesRepository;

    return-object p0
.end method

.method public final dataInteractor()Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileDataInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;

    return-object p0
.end method

.method public final dataToStateMapper()Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataToStateMapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataToStateMapper;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->customTileMapperProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataToStateMapper;

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;)V
    .locals 5

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileDefaultsRepositoryImplProvider:Ldagger/internal/Provider;

    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileServiceInteractorProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    const/4 v3, 0x3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileUserActionInteractorProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    const/4 v3, 0x5

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileRepositoryImplProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    const/4 v3, 0x6

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->provideCustomTileCoroutineScopeProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    const/4 v3, 0x4

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileInteractorProvider:Ldagger/internal/Provider;

    iget-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileServiceInteractorProvider:Ldagger/internal/Provider;

    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;I)V

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    const/4 v3, 0x7

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTilePackageUpdatesRepositoryImplProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileDataInteractorProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public final userActionInteractor()Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$CustomTileComponentImpl;->customTileUserActionInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;

    return-object p0
.end method
