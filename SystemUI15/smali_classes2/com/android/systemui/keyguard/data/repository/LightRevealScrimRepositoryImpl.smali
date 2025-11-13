.class public final Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepository;


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final context:Landroid/content/Context;

.field public final faceRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$3;

.field public final fingerprintRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$2;

.field public final nonBiometricRevealEffect:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final powerButtonRevealEffect:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final revealAmount:Lkotlinx/coroutines/flow/CallbackFlowBuilder;

.field public final revealAmountAnimator:Landroidx/core/animation/ValueAnimator;

.field public final revealEffect:Lkotlinx/coroutines/flow/Flow;

.field public final scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

.field public final tapRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

.field public willBeOrIsRevealed:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->Companion:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$Companion;

    const-class v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Landroid/content/Context;Lcom/android/systemui/power/data/repository/PowerRepository;Lcom/android/keyguard/logging/ScrimLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    new-instance p4, Lcom/android/systemui/statusbar/PowerButtonReveal;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c92

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p4, p2}, Lcom/android/systemui/statusbar/PowerButtonReveal;-><init>(F)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p2, p4}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->powerButtonRevealEffect:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    new-instance p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    iget-object p4, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p2, p4, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->tapRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    new-instance p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$2;

    iget-object p4, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->fingerprintSensorLocation:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p2, p4, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->fingerprintRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$2;

    new-instance p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$3;

    iget-object p4, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->faceSensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p2, p4, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->faceRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$3;

    check-cast p3, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p2, p3, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->nonBiometricRevealEffect:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->revealAmountAnimator:Landroidx/core/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealAmount$1;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealAmount$1;-><init>(Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->revealAmount:Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    new-instance p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2;

    invoke-direct {p2, p4, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V

    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->biometricUnlockState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->revealEffect:Lkotlinx/coroutines/flow/Flow;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final access$constructCircleRevealFromPoint(Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;Landroid/graphics/Point;)Lcom/android/systemui/statusbar/CircleReveal;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/CircleReveal;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iget v4, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/android/systemui/statusbar/CircleReveal;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
