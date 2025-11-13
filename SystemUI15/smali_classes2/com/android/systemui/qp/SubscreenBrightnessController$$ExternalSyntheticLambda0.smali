.class public final synthetic Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mDualSeekBarThreshold:I

    if-gt v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSunIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mExternalChange:Z

    return-void
.end method
