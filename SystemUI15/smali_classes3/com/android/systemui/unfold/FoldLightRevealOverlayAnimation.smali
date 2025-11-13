.class public final Lcom/android/systemui/unfold/FoldLightRevealOverlayAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/FullscreenLightRevealAnimation;


# instance fields
.field public final animationStatusRepository:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/FoldLightRevealOverlayAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/FoldLightRevealOverlayAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/display/data/repository/DeviceStateRepository;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$Factory;Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/unfold/FoldLightRevealOverlayAnimation;->animationStatusRepository:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepository;

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final onScreenTurningOn(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
