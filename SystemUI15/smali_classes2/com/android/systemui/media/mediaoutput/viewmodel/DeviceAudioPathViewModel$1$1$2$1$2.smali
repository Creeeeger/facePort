.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$1$1$2$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$1$1$2$1$2;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$1$1$2$1$2;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->updateDevices()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
