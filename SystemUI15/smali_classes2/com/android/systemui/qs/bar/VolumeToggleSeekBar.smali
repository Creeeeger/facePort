.class public final Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public currentProgress:I

.field public isSmartViewPlaying:Z

.field public final isTabletModel:Z

.field public isTracking:Z

.field public final mainThreadHandler$delegate:Lkotlin/Lazy;

.field public final progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final recheckCallback:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

.field public scaledTouchSlop:F

.field public final seekbarChangeListener:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

.field public springFinalPosition:I

.field public final stream:I

.field public touchedX:F

.field public volumeController:Lcom/android/systemui/plugins/VolumeDialogController;

.field public volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

.field public volumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->stream:I

    const-string/jumbo p1, "ro.build.characteristics"

    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "tablet"

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTabletModel:Z

    new-instance p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->seekbarChangeListener:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    sget-object p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$mainThreadHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->mainThreadHandler$delegate:Lkotlin/Lazy;

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

    new-instance v0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$progressBarSpring$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$progressBarSpring$1$2;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->recheckCallback:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->stream:I

    const-string/jumbo p1, "ro.build.characteristics"

    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v0, "tablet"

    invoke-static {p1, v0, p2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTabletModel:Z

    new-instance p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->seekbarChangeListener:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    sget-object p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$mainThreadHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->mainThreadHandler$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    const/high16 v1, 0x43e10000    # 450.0f

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iput-object p2, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/4 p2, 0x0

    iput p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    new-instance p2, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$progressBarSpring$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$progressBarSpring$1$2;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->recheckCallback:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->stream:I

    const-string/jumbo p1, "ro.build.characteristics"

    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo p3, "tablet"

    invoke-static {p1, p3, p2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTabletModel:Z

    new-instance p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->seekbarChangeListener:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    sget-object p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$mainThreadHandler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->mainThreadHandler$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    const/high16 v0, 0x43e10000    # 450.0f

    invoke-virtual {p2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iput-object p2, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    const/4 p2, 0x0

    iput p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    new-instance p2, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$progressBarSpring$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$progressBarSpring$1$2;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;-><init>(Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;)V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->recheckCallback:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$recheckCallback$1;

    return-void
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setHovered(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setHovered(Z)V

    :cond_1
    :goto_0
    return v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

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

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isSmartViewPlaying:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->touchedX:F

    sub-float/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTracking:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->scaledTouchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTracking:Z

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_5

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->currentProgress:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_5
    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->currentProgress:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_6
    return v1

    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isSmartViewPlaying:Z

    if-eqz p1, :cond_8

    return v1

    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTracking:Z

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->seekbarChangeListener:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return v1

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isSmartViewPlaying:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->clearFocus()V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    if-nez p1, :cond_a

    const/4 p1, 0x0

    :cond_a
    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getSmartViewDeviceName()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->isTabletModel:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f13147f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

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

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->seekbarChangeListener:Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar$VolumeSeekbarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->touchedX:F

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->currentProgress:I

    return v1
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onVisibilityChanged(Landroid/view/View;I)V

    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->getVolumeModel()Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->volume:I

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VolumeToggleSeekBar;->volumeSeekBar:Lcom/android/systemui/qs/bar/VolumeSeekBar;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/VolumeSeekBar;->setProgressChanged(I)V

    :cond_1
    return-void
.end method
