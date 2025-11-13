.class public final Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$observer$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$observer$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$observer$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    sget-object p1, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->Companion:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Companion;

    iget-object v0, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$observer$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    invoke-static {v0}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->access$getResolver$p(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Companion;->areAnimationsEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$observer$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
