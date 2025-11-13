.class public final Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2;->this$0:Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;

    iget v1, v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;-><init>(Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2;->this$0:Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0x4e6e32e7

    if-eq v2, v4, :cond_7

    const v4, 0x60418f4

    if-eq v2, v4, :cond_5

    const v4, 0x45cc07b3

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamMasterMuteChanged;->INSTANCE:Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamMasterMuteChanged;

    goto :goto_3

    :cond_5
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$InternalRingerModeChanged;->INSTANCE:Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$InternalRingerModeChanged;

    goto :goto_3

    :cond_7
    const-string v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_1

    :cond_8
    sget-object p1, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamDevicesChanged;->INSTANCE:Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamDevicesChanged;

    goto :goto_3

    :cond_9
    :goto_1
    const-string p2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v4, 0x0

    if-ne p2, v2, :cond_b

    const-string p1, "AudioManagerIntentsReceiver"

    const-string p2, "Intent doesn\'t have AudioManager.EXTRA_VOLUME_STREAM_TYPE extra"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    move-object p1, v4

    goto :goto_3

    :cond_b
    invoke-static {p2}, Lcom/android/settingslib/volume/shared/model/AudioStream;->constructor-impl(I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, -0x73abbf83

    if-eq v2, v5, :cond_d

    const v5, 0x727c71d1    # 5.0001804E30f

    if-eq v2, v5, :cond_c

    goto :goto_2

    :cond_c
    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamMuteChanged;

    invoke-direct {p1, p2, v4}, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamMuteChanged;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_d
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;

    invoke-direct {p1, p2, v4}, Lcom/android/settingslib/volume/shared/model/AudioManagerEvent$StreamVolumeChanged;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    if-eqz p1, :cond_f

    iput v3, v0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settingslib/volume/shared/AudioManagerEventsReceiverImpl$special$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_f

    return-object v1

    :cond_f
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
