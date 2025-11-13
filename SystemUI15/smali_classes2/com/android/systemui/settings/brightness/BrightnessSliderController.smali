.class public final Lcom/android/systemui/settings/brightness/BrightnessSliderController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/brightness/ToggleSlider;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBrightnessSliderHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

.field public mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

.field public mMirrorController:Lcom/android/systemui/settings/brightness/MirrorController;

.field public final mOnInterceptListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$1;

.field public final mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

.field public final mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;

.field public mTracking:Z

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mOnInterceptListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$1;

    new-instance p1, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mBrightnessSliderHapticPlugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    iput-object p5, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-direct {p2, p3, p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final getMax()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0
.end method

.method public final getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public final mirrorTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->mirrorTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSeekListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$2;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mOnInterceptListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$1;

    iput-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    iput-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;

    :cond_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mOnInterceptListener:Lcom/android/systemui/Gefingerpoken;

    return-void
.end method

.method public final setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAdminBlocker:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object p0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object v1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAdminBlocker:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final setMax(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->updateSliderResources()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    :cond_1
    return-void
.end method

.method public final setMirror(Lcom/android/systemui/settings/brightness/ToggleSlider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setMax(I)V

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    iput-object v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda0;

    :goto_0
    return-void
.end method

.method public final setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mListener:Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;

    return-void
.end method

.method public final setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->brightnessIcon$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/settings/brightness/BrightnessAnimationIcon;->play(II)V

    :cond_1
    return-void
.end method
