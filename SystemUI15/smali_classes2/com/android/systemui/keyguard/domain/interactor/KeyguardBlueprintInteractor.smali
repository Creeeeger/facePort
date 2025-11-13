.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final blueprint:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final blueprintId:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$special$$inlined$map$1;

.field public final configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

.field public final fingerprintPropertyInteractor:Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;

.field public final keyguardBlueprintRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

.field public final refreshTransition:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final smartspaceSection:Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/ClockSection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->keyguardBlueprintRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    iput-object p7, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->fingerprintPropertyInteractor:Lcom/android/systemui/biometrics/domain/interactor/FingerprintPropertyInteractor;

    iput-object p8, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->smartspaceSection:Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;

    iget-object p2, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->blueprint:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->blueprint:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->refreshTransition:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->refreshTransition:Lkotlinx/coroutines/flow/SharedFlowImpl;

    check-cast p4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p4, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->blueprintId:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$special$$inlined$map$1;

    return-void
.end method


# virtual methods
.method public final refreshBlueprint(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->keyguardBlueprintRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->assert:Lcom/android/systemui/util/ThreadAssert;

    invoke-virtual {v0}, Lcom/android/systemui/util/ThreadAssert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->targetTransitionConfig:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;->type:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;->getPriority()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    iget-object v1, p1, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;->type:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;->getPriority()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->targetTransitionConfig:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$refreshBlueprint$scheduleCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$refreshBlueprint$scheduleCallback$1;-><init>(Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->targetTransitionConfig:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    :cond_2
    return-void
.end method

.method public final refreshBlueprint(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;)V
    .locals 8

    new-instance v7, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;-><init>(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Type;ZZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->refreshBlueprint(Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;)V

    return-void
.end method

.method public final start()V
    .locals 4

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$start$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x3

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$start$2;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$start$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$start$3;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor$start$3;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardBlueprintInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
