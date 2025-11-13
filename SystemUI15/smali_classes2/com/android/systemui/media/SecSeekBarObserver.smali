.class public final Lcom/android/systemui/media/SecSeekBarObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final holder:Lcom/android/systemui/media/SecPlayerViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecPlayerViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    iget-boolean v0, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    move-object v2, p0

    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v0, v2

    :goto_4
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v3, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->seekAvailable:Z

    if-eqz v3, :cond_7

    const/16 v4, 0xff

    goto :goto_5

    :cond_7
    move v4, v1

    :goto_5
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, v2

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    move-object v0, v2

    :goto_7
    iget v4, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->totalTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v0, v2

    :goto_8
    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_b

    goto :goto_9

    :cond_b
    move-object v4, v2

    :goto_9
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v4, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->elapsedTimeView:Landroid/widget/TextView;

    if-eqz v4, :cond_c

    goto :goto_a

    :cond_c
    move-object v4, v2

    :goto_a
    int-to-long v8, v0

    div-long/2addr v8, v6

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_11

    if-eqz v3, :cond_11

    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    move-object v0, v2

    :goto_b
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_f

    goto :goto_c

    :cond_f
    move-object v0, v2

    :goto_c
    new-instance v4, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    iget-object v5, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v5, :cond_10

    goto :goto_d

    :cond_10
    move-object v5, v2

    :goto_d
    invoke-direct {v4, v5}, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;-><init>(Landroid/widget/SeekBar;)V

    iget-object v5, v4, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->config:Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;

    iget v6, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarPrimaryColor:I

    iput v6, v5, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->primaryColor:I

    iget v6, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->progressBarSecondaryColor:I

    iput v6, v5, Lcom/android/systemui/media/audiovisseekbar/config/AudioVisSeekBarConfig;->secondaryColor:I

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_12

    goto :goto_e

    :cond_12
    move-object v0, v2

    :goto_e
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_13

    goto :goto_f

    :cond_13
    move-object v0, v2

    :goto_f
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    iget-boolean v4, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->playing:Z

    if-eqz v4, :cond_14

    iget-boolean v4, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->scrubbing:Z

    if-nez v4, :cond_14

    if-eqz v3, :cond_14

    const/4 v1, 0x1

    :cond_14
    iget-boolean v4, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->active:Z

    if-ne v4, v1, :cond_15

    goto :goto_11

    :cond_15
    iput-boolean v1, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->active:Z

    iget-object v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->motionActivityAnimator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    if-eqz v1, :cond_16

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_16
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animateTo(F)V

    :goto_11
    iget-object v0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_17

    goto :goto_12

    :cond_17
    move-object v0, v2

    :goto_12
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;

    iget-boolean v1, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->listening:Z

    iget-boolean p1, p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->listening:Z

    if-ne v1, p1, :cond_18

    goto :goto_13

    :cond_18
    iput-boolean p1, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->listening:Z

    iget-object v0, v0, Lcom/android/systemui/media/audiovisseekbar/AudioVisSeekBarProgressDrawable;->motionActivityAnimator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    iput-boolean p1, v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->listening:Z

    if-eqz p1, :cond_19

    iget-object p1, v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_13

    :cond_19
    iget-object p1, v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_13
    if-nez v3, :cond_1b

    iget-object p1, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->seekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1a

    move-object v2, p1

    :cond_1a
    iget-object p0, p0, Lcom/android/systemui/media/SecPlayerViewHolder;->dummyProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    :goto_14
    return-void
.end method
