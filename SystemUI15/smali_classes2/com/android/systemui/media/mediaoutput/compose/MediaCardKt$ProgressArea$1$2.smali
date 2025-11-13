.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;
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
.field final synthetic $duration$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $livePosition$delegate:Landroidx/compose/runtime/MutableFloatState;

.field final synthetic $mediaInfo$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
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

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$livePosition$delegate:Landroidx/compose/runtime/MutableFloatState;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$duration$delegate:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$seekTo$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$livePosition$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$duration$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide v4

    const-wide/16 v2, 0x100

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->execute(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;JJ)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$2;->$seekTo$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
