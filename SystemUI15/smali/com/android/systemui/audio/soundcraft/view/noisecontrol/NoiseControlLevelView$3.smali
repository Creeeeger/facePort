.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method
