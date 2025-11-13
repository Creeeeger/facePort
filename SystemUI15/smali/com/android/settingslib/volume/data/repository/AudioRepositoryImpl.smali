.class public final Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/volume/data/repository/AudioRepository;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final audioManagerEventsReceiver:Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;

.field public final backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final mode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final ringerMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final streamSettingNames:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;Landroid/media/AudioManager;Landroid/content/ContentResolver;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManagerEventsReceiver:Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->contentResolver:Landroid/content/ContentResolver;

    iput-object v2, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object v3, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v5

    new-instance v6, Lkotlin/Pair;

    const-string/jumbo v7, "volume_voice"

    invoke-direct {v6, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v5

    new-instance v7, Lkotlin/Pair;

    const-string/jumbo v8, "volume_system"

    invoke-direct {v7, v5, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v5

    new-instance v8, Lkotlin/Pair;

    const-string/jumbo v9, "volume_ring"

    invoke-direct {v8, v5, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v5}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v9

    new-instance v10, Lkotlin/Pair;

    const-string/jumbo v11, "volume_music"

    invoke-direct {v10, v9, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v9

    new-instance v11, Lkotlin/Pair;

    const-string/jumbo v12, "volume_alarm"

    invoke-direct {v11, v9, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x5

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v9

    new-instance v12, Lkotlin/Pair;

    const-string/jumbo v13, "volume_notification"

    invoke-direct {v12, v9, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x6

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v9

    new-instance v13, Lkotlin/Pair;

    const-string/jumbo v14, "volume_bluetooth_sco"

    invoke-direct {v13, v9, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v9

    new-instance v14, Lkotlin/Pair;

    const-string/jumbo v15, "volume_a11y"

    invoke-direct {v14, v9, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v9, 0xb

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-static {v9}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v9

    new-instance v15, Lkotlin/Pair;

    const-string/jumbo v5, "volume_assistant"

    invoke-direct {v15, v9, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    filled-new-array/range {v6 .. v14}, [Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->streamSettingNames:Ljava/util/Map;

    new-instance v5, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$mode$1;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$mode$1;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v5

    new-instance v7, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$mode$2;

    invoke-direct {v7, v0, v6}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$mode$2;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v8, v7, v5}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v8, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    sget-object v7, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioManager;->getMode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v3, v9, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->mode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast v1, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;

    iget-object v1, v1, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    const-class v5, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$InternalRingerModeChanged;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v5

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;

    invoke-direct {v8, v1, v5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/reflect/KClass;)V

    new-instance v1, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v1, v8, v0}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;)V

    new-instance v5, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$ringerMode$2;

    invoke-direct {v5, v0, v6}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$ringerMode$2;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v6, v5, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v7, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    invoke-static {v4}, Lcom/android/settingslib/volume/shared/model/RingerMode;->constructor-impl(I)V

    invoke-static {v4}, Lcom/android/settingslib/volume/shared/model/RingerMode;->box-impl(I)Lcom/android/settingslib/volume/shared/model/RingerMode;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->ringerMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static final access$getCurrentAudioStream-tLTdkI8(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;I)Lcom/android/settingslib/volume/shared/model/AudioStreamModel;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v4, v0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMutableByUi(I)Z

    move-result v6

    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v7

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v8

    new-instance p0, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;-><init>(IIIIZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method


# virtual methods
.method public final getAudioStream-tLTdkI8(I)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManagerEventsReceiver:Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiver;

    check-cast v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;

    iget-object v0, v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;->events:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance v1, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getAudioStream-tLTdkI8$$inlined$filter$1;

    invoke-direct {v1, v0, p1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getAudioStream-tLTdkI8$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->streamSettingNames:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/flow/EmptyFlow;->INSTANCE:Lkotlinx/coroutines/flow/EmptyFlow;

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$volumeSettingChanges$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$volumeSettingChanges$1;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v0

    :goto_1
    filled-new-array {v1, v0}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getAudioStream-tLTdkI8$$inlined$map$1;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getAudioStream-tLTdkI8$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;I)V

    new-instance v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getAudioStream$3;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getAudioStream$3;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final getBluetoothAudioDeviceCategory(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getBluetoothAudioDeviceCategory$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getBluetoothAudioDeviceCategory$2;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCommunicationDevice()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 3

    new-instance v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$communicationDevice$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$communicationDevice$1;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v0

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v0, v2, p0}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;)V

    new-instance v2, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$communicationDevice$3;

    invoke-direct {v2, p0, v1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$communicationDevice$3;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iget-object v0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final getLastAudibleVolume-VrMivd8(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getLastAudibleVolume$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$getLastAudibleVolume$2;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setMuted-ZdW0WiI(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p0, p1, v1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setMuted$2;-><init>(ZLcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setRingerMode-2JRsiQU(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setRingerMode$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setRingerMode$2;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final setVolume-ZdW0WiI(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setVolume$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl$setVolume$2;-><init>(Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;IILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settingslib/volume/data/repository/AudioRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
