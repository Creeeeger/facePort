.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;
.super Landroidx/appcompat/widget/SeslSeekBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public buttonAnimatorRunnable:Ljava/lang/Runnable;

.field public currentProgress:I

.field public final handler:Landroid/os/Handler;

.field public init:Z

.field public isTracking:Z

.field public final progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final scaledTouchSlop:F

.field public final seekbarChangeListener:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;

.field public springFinalPosition:I

.field public touchedX:F

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$special$$inlined$lazyViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$special$$inlined$lazyViewModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->viewModel$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->init:Z

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->seekbarChangeListener:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->handler:Landroid/os/Handler;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iput-object v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$progressBarSpring$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$progressBarSpring$1$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$buttonAnimatorRunnable$1;->INSTANCE:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$buttonAnimatorRunnable$1;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$special$$inlined$lazyViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$special$$inlined$lazyViewModel$2;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->viewModel$delegate:Lkotlin/Lazy;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->init:Z

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->seekbarChangeListener:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->handler:Landroid/os/Handler;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    const/high16 v3, 0x43e10000    # 450.0f

    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iput-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$progressBarSpring$1$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$progressBarSpring$1$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$buttonAnimatorRunnable$1;->INSTANCE:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$buttonAnimatorRunnable$1;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->scaledTouchSlop:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    iput-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->isTracking:Z

    iput-object p2, p0, Landroidx/appcompat/widget/SeslSeekBar;->mOnSeekBarChangeListener:Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;

    return-void
.end method


# virtual methods
.method public final animateSeekBarButton(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$animateSeekBarButton$1;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$animateSeekBarButton$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftRoundedCornerSeekBarDrawable;Z)V

    iput-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    return-object p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->smartViewEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->touchedX:F

    sub-float/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->isTracking:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->scaledTouchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->isTracking:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_5

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->currentProgress:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_5
    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->currentProgress:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    :cond_6
    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->smartViewEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v1

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->seekbarChangeListener:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;->onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V

    iput-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->isTracking:Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->animateSeekBarButton(Z)V

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->smartViewEnabled:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->getViewModel$1()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "tablet"

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f13147f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f13147e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->seekbarChangeListener:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar$SeekbarChangeListener;->onStartTrackingTouch()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->touchedX:F

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->currentProgress:I

    iget-boolean p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->isTracking:Z

    if-nez p1, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeSeekBar;->animateSeekBarButton(Z)V

    :cond_c
    return v1
.end method
