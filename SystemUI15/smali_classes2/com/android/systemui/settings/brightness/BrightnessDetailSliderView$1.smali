.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

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

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsThumbShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTransparentThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsThumbShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$1;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
