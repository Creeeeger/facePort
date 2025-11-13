.class public final Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnabledTrustAgentsChanged(I)V
    .locals 0

    return-void
.end method

.method public final onIsActiveUnlockRunningChanged(ZI)V
    .locals 2

    sget-object v0, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;-><init>(ZI)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "TrustRepositoryLog"

    const-string p2, "onActiveUnlockRunningChanged"

    invoke-static {p0, v1, p1, p2}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTrustChanged(ZZIILjava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/logging/TrustRepositoryLogger;->onTrustChanged(ZZIILjava/util/List;)V

    sget-object p2, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p5, Lcom/android/systemui/keyguard/shared/model/TrustModel;

    new-instance v0, Lcom/android/keyguard/TrustGrantFlags;

    invoke-direct {v0, p4}, Lcom/android/keyguard/TrustGrantFlags;-><init>(I)V

    invoke-direct {p5, p1, p3, v0}, Lcom/android/systemui/keyguard/shared/model/TrustModel;-><init>(ZILcom/android/keyguard/TrustGrantFlags;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "TrustRepositoryLog"

    const-string p2, "onTrustChanged"

    invoke-static {p0, p5, p1, p2}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTrustError(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final onTrustManagedChanged(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/logging/TrustRepositoryLogger;->onTrustManagedChanged(ZI)V

    sget-object v0, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;

    invoke-direct {v1, p2, p1}, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;-><init>(IZ)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "TrustRepositoryLog"

    const-string p2, "onTrustManagedChanged"

    invoke-static {p0, v1, p1, p2}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
