.class public final Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public initPivot:Z

.field public final restoreSpringAnimationList:Ljava/util/List;

.field public final screenONAffordanceViews:Ljava/util/List;

.field public final screenOnSpringAnimationList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->screenONAffordanceViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->screenOnSpringAnimationList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->restoreSpringAnimationList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$1;-><init>(Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/statusbar/phone/DozeParameters;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {p3, p1, p1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
