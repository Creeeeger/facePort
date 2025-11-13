.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final boxContainer:Landroid/view/ViewGroup;

.field public final effectView:Landroid/view/ViewGroup;

.field public final noiseCancelingBar:Landroid/view/ViewGroup;

.field public final noiseControlLineView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

.field public final root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0bd4

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    const v1, 0x7f0a0bca

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    const v1, 0x7f0a0bd2

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->boxContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0bd5

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    const p1, 0x7f0a0bd3

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->noiseControlLineView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    return-void
.end method
