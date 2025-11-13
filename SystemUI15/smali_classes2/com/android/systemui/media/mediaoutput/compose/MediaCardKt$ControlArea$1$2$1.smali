.class final Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;
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
.field final synthetic $action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

.field final synthetic $mediaInfo$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lcom/android/systemui/media/mediaoutput/entity/MediaAction;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;",
            "Lcom/android/systemui/media/mediaoutput/entity/MediaAction;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;->$action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;->$viewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;->$mediaInfo$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/MediaCardKt$ControlArea$1$2$1;->$action:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    iget-wide v2, p0, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;->execute$default(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaInteraction;Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
