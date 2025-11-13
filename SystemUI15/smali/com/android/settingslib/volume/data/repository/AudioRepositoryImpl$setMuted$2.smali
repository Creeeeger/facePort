.class final Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $audioStream:I

.field final synthetic $isMuted:Z

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;


# direct methods
.method public constructor <init>(ZLcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->$isMuted:Z

    iput-object p2, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->this$0:Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    iput p3, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->$audioStream:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;

    iget-boolean v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->$isMuted:Z

    iget-object v1, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->this$0:Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    iget p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->$audioStream:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;-><init>(ZLcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->$isMuted:Z

    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->this$0:Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    iget-object v0, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->$audioStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->this$0:Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    iget-object p1, p1, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->$audioStream:I

    iget-boolean p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;->$isMuted:Z

    if-eqz p0, :cond_1

    const/16 p0, -0x64

    goto :goto_0

    :cond_1
    const/16 p0, 0x64

    :goto_0
    invoke-virtual {p1, v0, p0, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
