.class public final Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public appUsingBrightness:Ljava/lang/String;

.field public final brightnessIcon$delegate:Lkotlin/Lazy;

.field public final collapsedThumb:Landroid/graphics/drawable/Drawable;

.field public final downPoint:Landroid/graphics/PointF;

.field public final expandedThumb:Landroid/graphics/drawable/Drawable;

.field public highBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public highBrightnessDialogEnabled:Z

.field public highBrightnessModeToast:Landroid/widget/Toast;

.field public isExpanded:Z

.field public isLongPressed:Z

.field public isSliderDisabled:Z

.field public isThumbShowing:Z

.field public outdoormode:Z

.field public final packageManager$delegate:Lkotlin/Lazy;

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public secBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/SecBrightnessMirrorController;

.field public final seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public sliderDisableToast:Landroid/widget/Toast;

.field public sliderEnabled:Z

.field public final thumbAnimator:Landroid/animation/ValueAnimator;

.field public thumbThreshold:I

.field public final touchSlop:I

.field public tracking:Z

.field public final transparentThumb:Landroid/graphics/drawable/Drawable;

.field public final view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->Companion:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$Companion;

    const-class v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessSliderView;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    sget-object p2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$resourcePicker$2;->INSTANCE:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$resourcePicker$2;

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->resourcePicker$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$brightnessIcon$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$brightnessIcon$2;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->brightnessIcon$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$packageManager$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$packageManager$2;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->packageManager$delegate:Lkotlin/Lazy;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->touchSlop:I

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->downPoint:Landroid/graphics/PointF;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderEnabled:Z

    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->thumbThreshold:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "shown_max_brightness_dialog"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessDialogEnabled:Z

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0810a1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->collapsedThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0810a0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->expandedThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0810a2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->transparentThumb:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0xff

    filled-new-array {v3, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    new-instance v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$1;-><init>(Lcom/android/systemui/settings/brightness/ToggleSeekBar;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$thumbAnimator$1$2;-><init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;Lcom/android/systemui/settings/brightness/ToggleSeekBar;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->thumbAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final isAutoChecked()Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final showHighBrightnessModeToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessModeToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f131053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessModeToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public final showSliderDisabledToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderDisableToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->appUsingBrightness:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f131042

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderDisableToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public final updateSliderDrawable()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x102000d

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060abe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060abd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v9, v7, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v9, :cond_2

    instance-of v9, v3, Landroid/graphics/drawable/ScaleDrawable;

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    check-cast v7, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    check-cast v3, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v6, v4}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    iput-boolean v5, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->isGradient:Z

    iget v3, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->dualSeekBarThreshold:I

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-gt v3, v4, :cond_3

    move v5, v8

    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->setDualSeekBarResources(Z)V

    invoke-virtual {v2}, Landroid/widget/SeekBar;->invalidate()V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->collapsedThumb:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f060ac4

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->expandedThumb:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_6
    return-void
.end method

.method public final updateSliderHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMaxHeight(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/SeekBar;->setPaddingRelative(IIII)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public final updateSystemBrightnessEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->tracking:Z

    sget-object v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "Can\'t using updateSystemBrightnessEnabled() now."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderEnabled:Z

    if-eq v0, p1, :cond_2

    const-string/jumbo v0, "updateSystemBrightnessEnabled: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->getSlider()Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderEnabled:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2
    :goto_0
    return-void
.end method
