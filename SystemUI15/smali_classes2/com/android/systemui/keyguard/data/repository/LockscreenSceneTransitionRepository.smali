.class public final Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository$Companion;

.field public static final DEFAULT_STATE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;


# instance fields
.field public final nextLockscreenTargetState:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository;->Companion:Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository$Companion;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sput-object v0, Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository;->DEFAULT_STATE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository;->DEFAULT_STATE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/data/repository/LockscreenSceneTransitionRepository;->nextLockscreenTargetState:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
