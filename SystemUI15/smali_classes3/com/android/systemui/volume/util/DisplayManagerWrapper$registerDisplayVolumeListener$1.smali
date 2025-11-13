.class public final Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# instance fields
.field public final synthetic $isMute:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/DisplayManagerWrapper;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/util/DisplayManagerWrapper;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->this$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput-object p2, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->$isMute:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeChanged(IIIZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->this$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iput p3, v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayCurrentVolume:I

    iput p1, v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->minSmartViewVol:I

    iput p2, v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->maxSmartViewVol:I

    iget-object v0, v0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "onDisplayVolumeChanged : curVol = "

    const-string v2, ", minVol = "

    const-string v3, ", maxVol = "

    invoke-static {p3, p1, v1, v2, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mute="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayManagerWrapper"

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->$isMute:Ljava/util/function/Consumer;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;->this$0:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->volumeManager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->updateCurrentVolume()V

    return-void
.end method
