.class public final Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealAmount$1$updateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealAmount$1$updateListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealAmount$1$updateListener$1;->this$0:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 2

    check-cast p1, Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p1}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealAmount$1$updateListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealAmount$1$updateListener$1;->this$0:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->scrimLogger:Lcom/android/keyguard/logging/ScrimLogger;

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->Companion:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "revealAmount"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/keyguard/logging/ScrimLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
