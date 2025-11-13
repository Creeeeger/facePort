.class public final Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p1, :cond_11

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->access$000(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isAutoChecked()Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0xff

    iget-object v4, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessDialogEnabled:Z

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    iget-object p3, v4, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p3, p3, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->dualSeekBarThreshold:I

    if-gt p3, p2, :cond_5

    iget-object p0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->secBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p0, :cond_1

    sget-object p2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->TAG:Ljava/lang/String;

    const-string p3, "hideMirror : USING_HIGH_BRIGHTNESS_DIALOG"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->hideMirror()V

    :cond_1
    iget-object p0, v4, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz p0, :cond_11

    new-instance p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v3, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e0137

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_3

    goto/16 :goto_4

    :cond_3
    const p0, 0x7f140604

    if-le p3, p2, :cond_4

    new-instance p2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f131055

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f131059

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$1;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;)V

    const p3, 0x7f131058

    invoke-virtual {p2, p3, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    sget-object p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$2;->INSTANCE:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$2;

    const p3, 0x7f131056

    invoke-virtual {p2, p3, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$3;

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$3;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;)V

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_4

    :cond_4
    new-instance p2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f131054

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p0, 0x7f131057

    invoke-virtual {p2, p0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$3$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$3$1;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;)V

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_4

    :cond_5
    iget-object p3, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    :cond_6
    iget-object p3, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->secBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->showMirror()V

    invoke-virtual {p3, v4}, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->setLocationAndSize(Landroid/view/View;)V

    :cond_7
    iget-object p3, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->secBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p3, :cond_9

    if-eq p2, p0, :cond_8

    if-nez p2, :cond_9

    :cond_8
    const/16 p3, 0x29

    invoke-static {p3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p3

    invoke-virtual {v4, p3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_9
    iget-object p3, v4, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz p3, :cond_f

    iget v0, p3, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->dualSeekBarThreshold:I

    if-le v0, p2, :cond_b

    iget v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->thumbThreshold:I

    if-ge p2, v0, :cond_c

    invoke-virtual {p3}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_1

    :cond_a
    move v0, v1

    :goto_1
    if-ne v0, v3, :cond_c

    :cond_b
    const/4 v1, 0x1

    :cond_c
    invoke-virtual {p3, v1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->setDualSeekBarResources(Z)V

    iget v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->thumbThreshold:I

    if-ge p2, v0, :cond_d

    mul-int/lit16 v1, p2, 0x2710

    div-int/2addr v1, v0

    goto :goto_2

    :cond_d
    const/16 v1, 0x2710

    :goto_2
    iget-object p3, p3, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->sliderSupplier:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of v0, p3, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_e

    move-object v2, p3

    check-cast v2, Landroid/graphics/drawable/ScaleDrawable;

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    :cond_f
    iget-object p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->secBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

    if-eqz p1, :cond_11

    iget-object p3, p1, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->toggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    if-nez p3, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {p3, p2}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setValue(I)V

    :goto_3
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;->brightnessIcon:Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    :cond_11
    :goto_4
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/settings/brightness/BrightnessSliderEvent;->BRIGHTNESS_SLIDER_STARTED_TRACKING_TOUCH:Lcom/android/systemui/settings/brightness/BrightnessSliderEvent;

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz v1, :cond_0

    iget-boolean v2, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    iput-boolean v2, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->tracking:Z

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    if-eqz v1, :cond_1

    iget-boolean v2, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getValue()I

    move-result p1

    const/4 v3, 0x0

    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mBrightnessSliderHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    invoke-virtual {p1}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderEventProducer:Lcom/android/systemui/haptics/slider/SliderStateProducer;

    invoke-virtual {p1, v0}, Lcom/android/systemui/haptics/slider/SliderStateProducer;->onStartTracking(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/settings/brightness/MirrorController;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/settings/brightness/MirrorController;->showMirror()V

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/settings/brightness/MirrorController;

    invoke-static {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->access$100(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/settings/brightness/MirrorController;->setLocationAndSize(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/settings/brightness/BrightnessSliderEvent;->BRIGHTNESS_SLIDER_STOPPED_TRACKING_TOUCH:Lcom/android/systemui/settings/brightness/BrightnessSliderEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getValue()I

    move-result p1

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessController;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/settings/brightness/BrightnessController;->onChanged(IZZ)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mBrightnessSliderHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    invoke-virtual {p1}, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderEventProducer:Lcom/android/systemui/haptics/slider/SliderStateProducer;

    invoke-virtual {p1, v2}, Lcom/android/systemui/haptics/slider/SliderStateProducer;->onStopTracking(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mTracking:Z

    iput-boolean p1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->tracking:Z

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPPE1009"

    const-string v1, "location"

    const-string v2, "quick panel"

    const-string v3, "QUICK_PANEL_LAYOUT"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/settings/brightness/MirrorController;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/settings/brightness/MirrorController;->hideMirror()V

    :cond_2
    return-void
.end method
