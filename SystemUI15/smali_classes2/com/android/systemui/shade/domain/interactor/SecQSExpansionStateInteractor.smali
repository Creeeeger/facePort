.class public final Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final expansionStateListeners$delegate:Lkotlin/Lazy;

.field public final panelTransitionStateListener:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;

.field public qsStateListener:Lcom/android/systemui/qs/animator/PanelAffordanceAnimator$secQSStateListener$1;

.field public final repository$delegate:Lkotlin/Lazy;

.field public final splitHelper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/data/repository/ShadeRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$expansionStateListeners$2;->INSTANCE:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$expansionStateListeners$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->expansionStateListeners$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$repository$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$repository$2;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->repository$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$splitHelper$2;->INSTANCE:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$splitHelper$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->splitHelper$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;-><init>(Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;)V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->panelTransitionStateListener:Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor$panelTransitionStateListener$1;

    return-void
.end method


# virtual methods
.method public final getRepository()Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQSExpansionStateInteractor;->repository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/data/repository/SecQSExpansionStateRepository;

    return-object p0
.end method
