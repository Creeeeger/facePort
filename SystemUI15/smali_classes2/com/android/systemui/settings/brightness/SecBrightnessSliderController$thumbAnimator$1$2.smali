.class public final Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;Lcom/android/systemui/settings/brightness/ToggleSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-boolean v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isThumbShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->transparentThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-boolean v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isThumbShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isExpanded:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->expandedThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->collapsedThumb:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_3
    return-void
.end method
