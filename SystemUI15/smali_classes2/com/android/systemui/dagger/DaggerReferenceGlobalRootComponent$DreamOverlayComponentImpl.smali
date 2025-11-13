.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;


# instance fields
.field public final complicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

.field public dreamOverlayAnimationsControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public final dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

.field public dreamOverlayContainerViewControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public providesDreamInComplicationsTranslationYDurationProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesDreamInComplicationsTranslationYProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesDreamOverlayContainerViewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesDreamOverlayContentViewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesDreamOverlayStatusBarViewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesHubGestureIndicatorViewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesLifecycleProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesMaxBurnInOffsetProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public providesStatusBarViewControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider;"
        }
    .end annotation
.end field

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

.field public final touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->complicationHostViewController:Lcom/android/systemui/complication/ComplicationHostViewController;

    iput-object p5, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->initialize(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;)V

    return-void
.end method


# virtual methods
.method public final getCommunalTouchHandler()Lcom/android/systemui/dreams/touch/CommunalTouchHandler;
    .locals 4

    new-instance v0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->optionalOfCentralSurfacesProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->namedInteger2()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v3, v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->communalInteractorProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesLifecycleProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Lifecycle;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/dreams/touch/CommunalTouchHandler;-><init>(Ljava/util/Optional;ILcom/android/systemui/communal/domain/interactor/CommunalInteractor;Landroidx/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method public final getDreamOverlayContainerViewController()Lcom/android/systemui/dreams/DreamOverlayContainerViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayContainerViewControllerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    return-object p0
.end method

.method public final initialize(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;)V
    .locals 2

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/4 v1, 0x1

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContainerViewProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/4 v1, 0x2

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayContentViewProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/4 v1, 0x3

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesHubGestureIndicatorViewProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/4 v1, 0x5

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamOverlayStatusBarViewProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/4 v1, 0x4

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesStatusBarViewControllerProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/4 v1, 0x6

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesMaxBurnInOffsetProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/16 v1, 0x8

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamInComplicationsTranslationYProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/16 v1, 0x9

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesDreamInComplicationsTranslationYDurationProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/4 v1, 0x7

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayAnimationsControllerProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/4 v1, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayContainerViewControllerProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;

    iget-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->dreamOverlayComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;

    const/16 v1, 0xa

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl$SwitchingProvider;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->providesLifecycleProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public final namedInteger()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;->provideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07035f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final namedInteger2()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;->provideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/dreams/touch/dagger/CommunalTouchModule;->Companion:Lcom/android/systemui/dreams/touch/dagger/CommunalTouchModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f07020a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final namedLong()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;->provideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final namedLong2()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;->provideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final namedLong3()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;->provideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final namedLong4()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideResourcesFactory;->provideResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public final touchInsetSession()Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$DreamOverlayComponentImpl;->touchInsetManager:Lcom/android/systemui/touch/TouchInsetManager;

    invoke-virtual {p0}, Lcom/android/systemui/touch/TouchInsetManager;->createSession()Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    move-result-object p0

    return-object p0
.end method
