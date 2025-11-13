.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final minusButton:Landroid/widget/ImageView;

.field public final plusButton:Landroid/widget/ImageView;

.field public final root:Landroid/widget/LinearLayout;

.field public final seekbar:Landroid/widget/SeekBar;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0551

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->root:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0d34

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0ae1

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0ae0

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->seekbar:Landroid/widget/SeekBar;

    const v0, 0x7f0a0719

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->minusButton:Landroid/widget/ImageView;

    const v0, 0x7f0a08f4

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->plusButton:Landroid/widget/ImageView;

    return-void
.end method
