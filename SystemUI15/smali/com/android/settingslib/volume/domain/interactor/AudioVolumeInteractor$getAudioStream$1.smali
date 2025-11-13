.class final Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->this$0:Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    check-cast p2, Lcom/android/settingslib/volume/shared/model/RingerMode;

    iget p2, p2, Lcom/android/settingslib/volume/shared/model/RingerMode;->value:I

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;

    iget-object p0, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->this$0:Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    invoke-direct {v0, p0, p4}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;-><init>(Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->I$0:I

    iput-boolean p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    iget v1, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->I$0:I

    iget-boolean v3, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->Z$0:Z

    iget-object v4, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->this$0:Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    iput-object p1, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->I$0:I

    iput v2, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;->label:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_2

    iget v1, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    iget-object v2, v4, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

    check-cast v2, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    invoke-virtual {v2, v1, p0}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->getLastAudibleVolume-VrMivd8(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget p0, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    iget v5, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    iget-boolean v6, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isMuted:Z

    if-eq p0, v4, :cond_3

    if-ne p0, v3, :cond_5

    :cond_3
    if-ne v1, v2, :cond_5

    if-eq p0, v4, :cond_4

    if-ne p0, v3, :cond_6

    if-eqz v6, :cond_6

    :cond_4
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v5}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/Integer;

    iget v1, p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    invoke-direct {p0, v1}, Ljava/lang/Integer;-><init>(I)V

    :goto_0
    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget v1, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    iget v3, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    iget v4, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->maxVolume:I

    iget-boolean v5, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    iget-boolean v6, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByRingerMode:Z

    iget-boolean v7, p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isMuted:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;-><init>(IIIIZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
