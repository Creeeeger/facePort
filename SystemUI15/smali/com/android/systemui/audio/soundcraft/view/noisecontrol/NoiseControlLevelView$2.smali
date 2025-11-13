.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;->progressChange(I)V

    return-void
.end method
