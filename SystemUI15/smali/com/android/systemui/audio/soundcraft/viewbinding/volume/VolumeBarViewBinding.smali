.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final root:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

.field public final volumeBar:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

.field public final volumeIcon:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;

.field public final volumeStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0bd9

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;

    const v0, 0x7f0a0e7c

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->volumeBar:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;

    const v0, 0x7f0a0e4b

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->volumeIcon:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;

    const v0, 0x7f0a0e88

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;->volumeStatusIcon:Landroid/widget/ImageView;

    return-void
.end method
