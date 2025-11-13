.class public final Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$Companion;


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final context:Landroid/content/Context;

.field public currentRotation:I

.field public final displaySelector:Lkotlin/jvm/functions/Function1;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final internalDisplayInfos:Ljava/util/List;

.field public final lightRevealEffectFactory:Lkotlin/jvm/functions/Function1;

.field public final threadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/concurrency/ThreadFactory;Landroid/os/Handler;Lcom/android/systemui/unfold/updates/RotationChangeProvider;Ljava/util/Optional;Lcom/android/systemui/settings/DisplayTracker;Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/display/DisplayManager;",
            "Lcom/android/systemui/util/concurrency/ThreadFactory;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/unfold/updates/RotationChangeProvider;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/systemui/settings/DisplayTracker;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;->threadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    iput-object p4, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;->bgHandler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;->currentRotation:I

    new-instance p1, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$RotationWatcher;

    invoke-direct {p1, p0}, Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController$RotationWatcher;-><init>(Lcom/android/systemui/unfold/FullscreenLightRevealAnimationController;)V

    const-string p0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {p2, p0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p0, p3

    new-instance p5, Landroid/view/DisplayInfo;

    invoke-direct {p5}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p4, p5}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/view/DisplayInfo;

    iget p3, p3, Landroid/view/DisplayInfo;->type:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method
