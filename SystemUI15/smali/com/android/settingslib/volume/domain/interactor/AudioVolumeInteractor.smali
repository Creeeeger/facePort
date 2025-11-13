.class public final Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

.field public final notificationsSoundPolicyInteractor:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/data/repository/AudioRepository;Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

    iput-object p2, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->notificationsSoundPolicyInteractor:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;

    return-void
.end method


# virtual methods
.method public final canChangeVolume-tLTdkI8(I)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->notificationsSoundPolicyInteractor:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;

    if-ne p1, v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isZenMuted-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->getAudioStream-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$canChangeVolume-tLTdkI8$$inlined$map$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$canChangeVolume-tLTdkI8$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$canChangeVolume$2;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$canChangeVolume$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, p1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isZenMuted-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object p0

    new-instance v1, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$canChangeVolume-tLTdkI8$$inlined$map$2;

    invoke-direct {v1, p0}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$canChangeVolume-tLTdkI8$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    :goto_0
    return-object v1
.end method

.method public final getAudioStream-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

    check-cast v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->getAudioStream-tLTdkI8(I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->ringerMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->notificationsSoundPolicyInteractor:Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor;->isZenMuted-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object p1

    new-instance v2, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$getAudioStream$1;-><init>(Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v0, p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    return-object p0
.end method

.method public final setMuted-ZdW0WiI(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;

    iget v1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;-><init>(Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->I$0:I

    iget-object p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-boolean p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->Z$0:Z

    iget p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->I$0:I

    iget-object p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-boolean p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->Z$0:Z

    iget p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->I$0:I

    iget-object p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-boolean p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->Z$0:Z

    iget p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->I$0:I

    iget-object p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->getAudioStream-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p2

    iput-object p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->I$0:I

    iput-boolean p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->Z$0:Z

    iput v7, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_1
    check-cast p2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    iget-boolean p2, p2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    if-nez p2, :cond_8

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_8
    if-ne p1, v6, :cond_b

    if-eqz p3, :cond_9

    move p2, v7

    goto :goto_2

    :cond_9
    move p2, v6

    :goto_2
    iget-object v2, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

    invoke-static {p2}, Lcom/android/settingslib/volume/shared/model/RingerMode;->constructor-impl(I)V

    iput-object p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->I$0:I

    iput-boolean p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->Z$0:Z

    iput v6, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->label:I

    check-cast v2, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    invoke-virtual {v2, p2, v0}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->setRingerMode-2JRsiQU(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_a
    move v8, p3

    move-object p3, p0

    move p0, v8

    :goto_3
    move-object v8, p3

    move p3, p0

    move-object p0, v8

    :cond_b
    iget-object p2, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

    iput-object p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->I$0:I

    iput-boolean p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->Z$0:Z

    iput v5, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->label:I

    check-cast p2, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->setMuted-ZdW0WiI(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_c

    return-object v1

    :cond_c
    move v8, p3

    move-object p3, p0

    move p0, v8

    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_e

    if-nez p0, :cond_e

    invoke-virtual {p3, p1}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->getAudioStream-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    iput-object p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->I$0:I

    iput v4, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->label:I

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_d

    return-object v1

    :cond_d
    move p0, p1

    move-object p1, p3

    :goto_5
    check-cast p2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    iget p3, p2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    iget p2, p2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    if-ne p3, p2, :cond_e

    add-int/2addr p3, v7

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setMuted$1;->label:I

    invoke-virtual {p1, p0, p3, v0}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->setVolume-ZdW0WiI(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    return-object v1

    :cond_e
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final setVolume-ZdW0WiI(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;

    iget v1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;-><init>(Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$2:I

    iget p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$1:I

    iget p2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$0:I

    iget-object v2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    iget-object v5, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget p2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$1:I

    iget p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$0:I

    iget-object p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->getAudioStream-tLTdkI8(I)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p3

    iput-object p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$0:I

    iput p2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$1:I

    iput v6, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->label:I

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    move-object v2, p3

    check-cast v2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    iget p3, v2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    if-eq p2, p3, :cond_b

    iget-object v7, p0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->audioRepository:Lcom/android/settingslib/volume/data/repository/AudioRepository;

    iput-object p0, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$0:I

    iput p2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$1:I

    iput p3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->I$2:I

    iput v5, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->label:I

    check-cast v7, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;

    invoke-virtual {v7, p1, p2, v0}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->setVolume-ZdW0WiI(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, p0

    move p0, p3

    move v8, p2

    move p2, p1

    move p1, v8

    :goto_2
    iget p3, v2, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    const/4 v2, 0x0

    if-ne p1, p3, :cond_9

    iput-object v2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->label:I

    invoke-virtual {v5, p2, v0, v6}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->setMuted-ZdW0WiI(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    if-ne p0, p3, :cond_b

    if-le p1, p3, :cond_b

    iput-object v2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor$setVolume$1;->label:I

    const/4 p0, 0x0

    invoke-virtual {v5, p2, v0, p0}, Lcom/android/settingslib/volume/domain/interactor/AudioVolumeInteractor;->setMuted-ZdW0WiI(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
