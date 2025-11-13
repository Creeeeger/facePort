.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

.field public final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;

    sget v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBindingFactory;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0d044b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->semSetMin(I)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->semSetMode(I)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    iget-object v1, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;->level:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$SeekbarChangeListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$SeekbarChangeListener;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;)V

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->plusButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->minusButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;)V

    invoke-virtual {v1, p2, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p3, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;->levelMax:Landroidx/lifecycle/MutableLiveData;

    new-instance p3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$4;

    invoke-direct {p3, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView$4;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;)V

    invoke-virtual {p1, p2, p3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
