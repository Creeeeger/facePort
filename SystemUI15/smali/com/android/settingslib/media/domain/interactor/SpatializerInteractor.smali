.class public final Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final repository:Lcom/android/settingslib/media/data/repository/SpatializerRepository;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/media/data/repository/SpatializerRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;->repository:Lcom/android/settingslib/media/data/repository/SpatializerRepository;

    return-void
.end method


# virtual methods
.method public final isSpatialAudioEnabled(Landroid/media/AudioDeviceAttributes;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;

    iget v1, v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;-><init>(Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor$isSpatialAudioEnabled$1;->label:I

    iget-object p0, p0, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;->repository:Lcom/android/settingslib/media/data/repository/SpatializerRepository;

    check-cast p0, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;->getSpatialAudioCompatibleDevices(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
