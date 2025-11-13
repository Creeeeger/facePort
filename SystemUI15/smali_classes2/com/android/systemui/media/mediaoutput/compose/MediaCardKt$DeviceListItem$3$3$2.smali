.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$3$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v0, p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;->cancel(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
