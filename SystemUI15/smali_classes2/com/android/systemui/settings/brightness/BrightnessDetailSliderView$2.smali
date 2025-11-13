.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const/16 p1, 0x2710

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    sget v1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->isAutoChecked$1()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    iget p3, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    if-gt p3, p2, :cond_2

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0137

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p1

    const p2, 0x7f140604

    if-le p0, p1, :cond_0

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f131055

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p2, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f131059

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    const p2, 0x7f131058

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const p2, 0x7f131056

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;

    invoke-direct {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$3;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f131054

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const p1, 0x7f131057

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$4;

    invoke-direct {p1, v0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$4;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p3, v0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-object p3, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-object v0, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    iget-object v1, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v0, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    div-int/2addr v1, v0

    iput v1, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumbThreshold:I

    if-ge p2, v1, :cond_5

    iget-object v0, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-int/2addr p1, p2

    iget p3, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumbThreshold:I

    div-int/2addr p1, p3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    :cond_5
    iget-object p3, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, p2, :cond_8

    iget-object p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    iget p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumbThreshold:I

    if-ge p2, p3, :cond_9

    iget-object p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p3

    const/16 v2, 0xff

    if-ne p3, v2, :cond_9

    :cond_8
    iget-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-boolean p3, p3, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    if-eqz p3, :cond_9

    move p3, v0

    goto :goto_3

    :cond_9
    :goto_2
    move p3, v1

    :goto_3
    iget-boolean v2, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsSliderWarning:Z

    if-eq p3, v2, :cond_b

    iput-boolean p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsSliderWarning:Z

    const/16 v2, 0xc8

    if-eqz p3, :cond_a

    iget-object p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_4

    :cond_a
    iget-object p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :cond_b
    :goto_4
    iget-object p3, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mBrightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {p3, v0, p1}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    if-eq p2, p1, :cond_c

    if-nez p2, :cond_d

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    const/16 p3, 0x29

    invoke-static {p3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    if-eqz p1, :cond_e

    iget-boolean p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p1, p2, p0, v1}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    :cond_e
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsThumbShowing:Z

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumbAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mTracking:Z

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/4 v2, 0x1

    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iput-boolean v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mIsThumbShowing:Z

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mThumbAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "detail panel"

    const-string v0, "QUICK_PANEL_LAYOUT"

    const-string v1, "QPPE1009"

    const-string v2, "location"

    invoke-static {p0, v1, v2, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
