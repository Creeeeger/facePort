.class final Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;
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
.field final synthetic this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;->this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable$remainTrackRenderer$2;->this$0:Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    iget-object v1, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->view:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/media/audiovisseekbar/renderer/track/RemainTrackLineRenderer;-><init>(Landroid/view/View;Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;)V

    return-object v0
.end method
