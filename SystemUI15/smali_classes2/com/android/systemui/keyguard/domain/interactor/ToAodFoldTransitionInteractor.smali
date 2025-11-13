.class public final Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final foldAnimator:Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1;

.field public final keyguardClockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mainScope:Lkotlinx/coroutines/CoroutineScope;

.field public parentAnimator:Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;

.field public final transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->keyguardClockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->transitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor$foldAnimator$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/ToAodFoldTransitionInteractor;)V

    return-void
.end method
