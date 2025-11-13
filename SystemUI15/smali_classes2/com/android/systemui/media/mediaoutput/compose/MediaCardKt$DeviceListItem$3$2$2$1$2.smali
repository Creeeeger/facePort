.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;
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

.field final synthetic $liveVolume$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $seekTo$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

.field final synthetic $volume$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;",
            "Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$liveVolume$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$volume$delegate:Landroidx/compose/runtime/MutableFloatState;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$seekTo$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$liveVolume$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;->adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$volume$delegate:Landroidx/compose/runtime/MutableFloatState;

    int-to-float v0, v0

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$DeviceListItem$3$2$2$1$2;->$seekTo$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
