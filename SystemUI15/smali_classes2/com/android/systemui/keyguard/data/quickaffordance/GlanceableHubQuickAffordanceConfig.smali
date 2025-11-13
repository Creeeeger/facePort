.class public final Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# instance fields
.field public final communalRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

.field public final key:Ljava/lang/String;

.field public final lockScreenState$delegate:Lkotlin/Lazy;

.field public final pickerIconResourceId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;->communalRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

    const-string p1, "glanceable_hub"

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;->key:Ljava/lang/String;

    const p1, 0x7f080b73

    iput p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;->pickerIconResourceId:I

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig$lockScreenState$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig$lockScreenState$2;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;->lockScreenState$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;->lockScreenState$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getPickerIconResourceId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;->pickerIconResourceId:I

    return p0
.end method

.method public final getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;

    return-object p0
.end method

.method public final onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
    .locals 1

    sget-object p1, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/GlanceableHubQuickAffordanceConfig;->communalRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;

    return-object p0
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Glanceable hub"

    return-object p0
.end method
