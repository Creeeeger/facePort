.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableFloatState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/MutableFloatState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;->$seekTo$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;->$livePosition$delegate:Landroidx/compose/runtime/MutableFloatState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;->$seekTo$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    const-wide/16 v4, 0x100

    const-wide/16 v6, -0x1

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->execute(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;JJ)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ProgressArea$1$1;->$livePosition$delegate:Landroidx/compose/runtime/MutableFloatState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
