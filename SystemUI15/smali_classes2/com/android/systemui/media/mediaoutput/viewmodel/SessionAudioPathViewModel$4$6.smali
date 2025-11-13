.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$6;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/List;

    const-string p2, "list updated"

    const-string v0, "SessionAudioPathViewModel"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    const-string v2, "\t"

    invoke-static {v2, v1, v0}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$4$6;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->_audioDevices:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
