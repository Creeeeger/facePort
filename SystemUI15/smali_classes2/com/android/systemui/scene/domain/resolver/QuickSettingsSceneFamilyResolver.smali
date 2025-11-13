.class public final Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/scene/domain/resolver/SceneResolver;


# static fields
.field public static final quickSettingsScenes:Ljava/util/Set;


# instance fields
.field public final resolvedScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final targetFamily:Lcom/android/compose/animation/scene/SceneKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v1, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettingsShade:Lcom/android/compose/animation/scene/SceneKey;

    sget-object v2, Lcom/android/systemui/scene/shared/model/Scenes;->Shade:Lcom/android/compose/animation/scene/SceneKey;

    filled-new-array {v0, v1, v2}, [Lcom/android/compose/animation/scene/SceneKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver;->quickSettingsScenes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/scene/shared/model/SceneFamilies;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    iput-object v0, p0, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver;->targetFamily:Lcom/android/compose/animation/scene/SceneKey;

    check-cast p2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p2, p2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p2}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver$special$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver;)V

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-interface {p2}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shade/shared/model/ShadeMode;

    instance-of v2, p2, Lcom/android/systemui/shade/shared/model/ShadeMode$Single;

    if-eqz v2, :cond_0

    sget-object p2, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_0

    :cond_0
    instance-of v2, p2, Lcom/android/systemui/shade/shared/model/ShadeMode$Dual;

    if-eqz v2, :cond_1

    sget-object p2, Lcom/android/systemui/scene/shared/model/Scenes;->QuickSettingsShade:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_0

    :cond_1
    instance-of p2, p2, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/systemui/scene/shared/model/Scenes;->Shade:Lcom/android/compose/animation/scene/SceneKey;

    :goto_0
    invoke-static {v1, p1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver;->resolvedScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final getResolvedScene()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver;->resolvedScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getTargetFamily()Lcom/android/compose/animation/scene/SceneKey;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver;->targetFamily:Lcom/android/compose/animation/scene/SceneKey;

    return-object p0
.end method

.method public final includesScene(Lcom/android/compose/animation/scene/SceneKey;)Z
    .locals 0

    sget-object p0, Lcom/android/systemui/scene/domain/resolver/QuickSettingsSceneFamilyResolver;->quickSettingsScenes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
