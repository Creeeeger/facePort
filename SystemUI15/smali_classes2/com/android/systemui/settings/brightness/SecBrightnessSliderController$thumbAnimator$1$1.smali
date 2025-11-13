.class public final Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/ToggleSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$1;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$1;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    return-void
.end method
