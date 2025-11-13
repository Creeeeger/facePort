.class public final Lcom/android/systemui/shade/domain/startable/ShadeStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final configurationRepository:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;

.field public final scrimShadeTransitionController:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public final splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

.field public final touchLog:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/shade/ShadeExpansionStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;",
            "Lcom/android/systemui/shade/data/repository/ShadeRepository;",
            "Lcom/android/systemui/statusbar/policy/SplitShadeStateController;",
            "Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->touchLog:Lcom/android/systemui/log/LogBuffer;

    iput-object p4, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->configurationRepository:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;

    iput-object p5, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    iput-object p6, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    iput-object p7, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->scrimShadeTransitionController:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/Flags;->dualShade()V

    new-instance v0, Lcom/android/systemui/shade/domain/startable/ShadeStartable$hydrateShadeMode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shade/domain/startable/ShadeStartable$hydrateShadeMode$1;-><init>(Lcom/android/systemui/shade/domain/startable/ShadeStartable;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x3

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v0, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/shade/DispatchTouchLogger;

    iget-object v1, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->touchLog:Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/DispatchTouchLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    sput-object v0, Lcom/android/systemui/shade/TouchLogger;->touchLogger:Lcom/android/systemui/shade/DispatchTouchLogger;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->scrimShadeTransitionController:Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$currentState$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$currentState$1;-><init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V

    iget-object v1, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->lastExpansionEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-virtual {p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->onStateChanged()V

    new-instance v0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$1;-><init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController$init$2;-><init>(Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;)V

    const-string v1, "ScrimShadeTransitionController"

    iget-object p0, p0, Lcom/android/systemui/shade/transition/ScrimShadeTransitionController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method
