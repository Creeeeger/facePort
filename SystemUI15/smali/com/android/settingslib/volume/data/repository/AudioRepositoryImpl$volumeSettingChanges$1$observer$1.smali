.class public final Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$volumeSettingChanges$1$observer$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Landroidx/concurrent/futures/DirectExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Landroidx/concurrent/futures/DirectExecutor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$volumeSettingChanges$1$observer$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/database/ContentObserver;-><init>(Ljava/util/concurrent/Executor;I)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$volumeSettingChanges$1$observer$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$volumeSettingChanges$1$observer$1$onChange$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$volumeSettingChanges$1$observer$1$onChange$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
