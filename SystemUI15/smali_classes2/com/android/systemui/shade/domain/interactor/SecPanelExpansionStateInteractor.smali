.class public final Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final expansionStateListeners$delegate:Lkotlin/Lazy;

.field public final observer:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;

.field public final repository$delegate:Lkotlin/Lazy;

.field public final shadeExpansionListener:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$shadeExpansionListener$1;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final stateListener:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$stateListener$1;

.field public final statusBarManager$delegate:Lkotlin/Lazy;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final uiOffloadThread$delegate:Lkotlin/Lazy;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p4, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p5, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance p2, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$repository$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->repository$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$uiOffloadThread$2;->INSTANCE:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$uiOffloadThread$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->uiOffloadThread$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$statusBarManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$statusBarManager$2;-><init>(Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->statusBarManager$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$expansionStateListeners$2;->INSTANCE:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$expansionStateListeners$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->expansionStateListeners$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->observer:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$observer$1;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$shadeExpansionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$shadeExpansionListener$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->shadeExpansionListener:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$shadeExpansionListener$1;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$stateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$stateListener$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->stateListener:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor$stateListener$1;

    return-void
.end method


# virtual methods
.method public final getRepository()Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->repository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    return-object p0
.end method
