.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$animateSeekBarButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $progressDrawable:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;

.field public final synthetic $start:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$animateSeekBarButton$1;->$progressDrawable:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;

    iput-boolean p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$animateSeekBarButton$1;->$start:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$animateSeekBarButton$1;->$progressDrawable:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;

    iget-boolean p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$animateSeekBarButton$1;->$start:Z

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    if-eqz p0, :cond_1

    iget p0, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonColor:I

    iget v3, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->endColor:I

    if-eq p0, v3, :cond_2

    filled-new-array {p0, v3}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget p0, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonColor:I

    iget v3, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonStartColor:I

    if-eq p0, v3, :cond_2

    filled-new-array {p0, v3}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable$animateButton$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable$animateButton$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;)V

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
