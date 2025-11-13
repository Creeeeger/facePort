.class final Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;
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
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->this$0:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Landroid/media/AudioDeviceAttributes;

    check-cast p3, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioAvailabilityModel;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p1, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->this$0:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    invoke-direct {p1, p0, p4}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;-><init>(Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->L$0:Ljava/lang/Object;

    iput-object p3, p1, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioAvailabilityModel;

    instance-of p1, p1, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioAvailabilityModel$Unavailable;

    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Disabled;->INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Disabled;

    return-object p0

    :cond_3
    if-nez v1, :cond_4

    sget-object p0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Disabled;->INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Disabled;

    return-object p0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->this$0:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    iget-object p1, p1, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->spatializerInteractor:Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;

    iput-object v1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;->isSpatialAudioEnabled(Landroid/media/AudioDeviceAttributes;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->this$0:Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;

    iget-object p1, p1, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor;->spatializerInteractor:Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/volume/panel/component/spatial/domain/interactor/SpatialAudioComponentInteractor$isEnabled$2;->label:I

    iget-object p1, p1, Lcom/android/settingslib/media/domain/interactor/SpatializerInteractor;->repository:Lcom/android/settingslib/media/data/repository/SpatializerRepository;

    check-cast p1, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;

    invoke-virtual {p1, v1, p0}, Lcom/android/settingslib/media/data/repository/SpatializerRepositoryImpl;->isHeadTrackingEnabled(Landroid/media/AudioDeviceAttributes;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$HeadTrackingEnabled;->INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$HeadTrackingEnabled;

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$SpatialAudioEnabled;->Companion:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$SpatialAudioEnabled$Companion;

    return-object p0

    :cond_8
    sget-object p0, Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Disabled;->INSTANCE:Lcom/android/systemui/volume/panel/component/spatial/domain/model/SpatialAudioEnabledModel$Disabled;

    return-object p0
.end method
