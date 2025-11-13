.class public final Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# static fields
.field public static final RESET_ANIMATION_DURATION_MS:I

.field public static final RESET_ANIMATION_THRESHOLD_MS:I


# instance fields
.field public animationEnabled:Z

.field public final holder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

.field public final listeningStateLogger:Lcom/android/app/tracing/TraceStateLogger;

.field public final playingStateLogger:Lcom/android/app/tracing/TraceStateLogger;

.field public final seekBarDisabledHeight:I

.field public final seekBarDisabledVerticalPadding:I

.field public final seekBarEnabledMaxHeight:I

.field public final seekBarEnabledVerticalPadding:I

.field public seekBarResetAnimator:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x2ee

    sput v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->RESET_ANIMATION_DURATION_MS:I

    const/16 v0, 0xfa

    sput v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->RESET_ANIMATION_THRESHOLD_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->holder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    new-instance v9, Lcom/android/app/tracing/TraceStateLogger;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-string v3, "SeekBarObserver#playing"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/app/tracing/TraceStateLogger;-><init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->playingStateLogger:Lcom/android/app/tracing/TraceStateLogger;

    new-instance v2, Lcom/android/app/tracing/TraceStateLogger;

    const/16 v15, 0xe

    const/16 v16, 0x0

    const-string v11, "SeekBarObserver#listening"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/android/app/tracing/TraceStateLogger;-><init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->listeningStateLogger:Lcom/android/app/tracing/TraceStateLogger;

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ded

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarEnabledMaxHeight:I

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070dec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarDisabledHeight:I

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070e06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarEnabledVerticalPadding:I

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070e05

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarDisabledVerticalPadding:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->animationEnabled:Z

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070e03

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070e00

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070e01

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070e02

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v5, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;

    if-eqz v5, :cond_0

    check-cast v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iput v0, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->waveLength:F

    iput v2, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->lineAmplitude:F

    iput v3, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->phaseSpeed:F

    iget v0, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->strokeWidth:F

    cmpg-float v0, v0, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput v4, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->strokeWidth:F

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public buildResetAnimator(I)Landroid/animation/Animator;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->holder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    sget v1, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->RESET_ANIMATION_DURATION_MS:I

    add-int/2addr p1, v1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    const-string v0, "progress"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->holder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->enabled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result p1

    iget v2, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarDisabledHeight:I

    if-eq p1, v2, :cond_1

    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result p1

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget p0, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarDisabledVerticalPadding:I

    invoke-virtual {v5, p1, p0, v2, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->setAnimate(Z)V

    :goto_1
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_3
    iget-boolean v2, p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->playing:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->playingStateLogger:Lcom/android/app/tracing/TraceStateLogger;

    invoke-virtual {v5, v4}, Lcom/android/app/tracing/TraceStateLogger;->log(Ljava/lang/String;)V

    iget-boolean v4, p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->listening:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->listeningStateLogger:Lcom/android/app/tracing/TraceStateLogger;

    invoke-virtual {v6, v5}, Lcom/android/app/tracing/TraceStateLogger;->log(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-boolean v6, p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->seekAvailable:Z

    if-eqz v6, :cond_4

    const/16 v7, 0xff

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const/4 v5, 0x1

    iget-boolean v7, p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->scrubbing:Z

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    if-nez v7, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->animationEnabled:Z

    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->setAnimate(Z)V

    :goto_4
    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    xor-int/lit8 v2, v6, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/media/controls/ui/drawable/SquigglyProgress;->transitionEnabled:Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_5
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMaxHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarEnabledMaxHeight:I

    if-eq v1, v2, :cond_8

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarEnabledVerticalPadding:I

    invoke-virtual {v5, v1, v6, v2, v4}, Landroid/widget/SeekBar;->setPadding(IIII)V

    :cond_8
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    iget v2, p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->duration:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    int-to-long v1, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_9

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez v7, :cond_c

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarResetAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    :cond_a
    if-nez v3, :cond_c

    sget v2, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->RESET_ANIMATION_THRESHOLD_MS:I

    if-gt p1, v2, :cond_b

    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-le v3, v2, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->buildResetAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    iput-object v2, p0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->seekBarResetAnimator:Landroid/animation/Animator;

    goto :goto_6

    :cond_b
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_c
    :goto_6
    int-to-long p0, p1

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    if-eqz v7, :cond_d

    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f130451

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_7
    return-void
.end method
