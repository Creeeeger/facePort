.class public Lcom/android/internal/widget/MessagingPropertyAnimator;
.super Ljava/lang/Object;
.source "MessagingPropertyAnimator.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final blacklist ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final blacklist ALPHA_OUT:Landroid/view/animation/Interpolator;

.field private static final blacklist APPEAR_ANIMATION_LENGTH:J = 0xd2L

.field private static final blacklist CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private static final blacklist TAG_ALPHA_ANIMATOR:I = 0x1020615

.field private static final blacklist TAG_FIRST_LAYOUT:I = 0x1020616

.field private static final blacklist TAG_LAYOUT_TOP:I = 0x1020618

.field private static final blacklist TAG_TOP:I = 0x102061c

.field private static final blacklist TAG_TOP_ANIMATOR:I = 0x102061b

.field private static final blacklist TOP:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsetTop(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smupdateLayerType(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    new-instance v0, Lcom/android/internal/widget/MessagingPropertyAnimator$1;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->TOP:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fadeIn(Landroid/view/View;)V
    .locals 5

    const v0, 0x1020615

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    sget-object v3, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingPropertyAnimator$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static blacklist fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 7

    const v0, 0x1020615

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isHidingAnimated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v4, 0x1

    aput v3, v5, v4

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/MessagingPropertyAnimator;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xd2

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$4;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator$4;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p0, v4}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateLayerType(Landroid/view/View;Z)V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public static blacklist getLayoutTop(Landroid/view/View;)I
    .locals 2

    const v0, 0x1020618

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static blacklist getTop(Landroid/view/View;)I
    .locals 2

    const v0, 0x102061c

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static blacklist isAnimatingAlpha(Landroid/view/View;)Z
    .locals 1

    const v0, 0x1020615

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isAnimatingTranslation(Landroid/view/View;)Z
    .locals 1

    const v0, 0x102061b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isFirstLayout(Landroid/view/View;)Z
    .locals 2

    const v0, 0x1020616

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static blacklist isHidingAnimated(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020462

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist recycle(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setFirstLayout(Landroid/view/View;Z)V

    return-void
.end method

.method public static blacklist setClippingDeactivated(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Lcom/android/internal/widget/MessagingPropertyAnimator;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method

.method private static blacklist setFirstLayout(Landroid/view/View;Z)V
    .locals 2

    const v0, 0x1020616

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method private static blacklist setLayoutTop(Landroid/view/View;I)V
    .locals 2

    const v0, 0x1020618

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public static blacklist setToLaidOutPosition(Landroid/view/View;)V
    .locals 1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void
.end method

.method private static blacklist setTop(Landroid/view/View;I)V
    .locals 2

    const v0, 0x102061c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->updateTopAndBottom(Landroid/view/View;)V

    return-void
.end method

.method public static blacklist startLocalTranslationFrom(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .locals 2

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static blacklist startLocalTranslationTo(Landroid/view/View;ILandroid/view/animation/Interpolator;)V
    .locals 2

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    add-int v1, v0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private static blacklist startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
    .locals 5

    const v0, 0x102061b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p1, p2, :cond_2

    invoke-static {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isHidingAnimated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/internal/widget/MessagingPropertyAnimator;->TOP:Landroid/util/IntProperty;

    filled-new-array {p1, p2}, [I

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    invoke-virtual {v2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xd2

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/internal/widget/MessagingPropertyAnimator$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/MessagingPropertyAnimator$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    invoke-static {p0, p2}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void
.end method

.method private static blacklist updateLayerType(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist updateTopAndBottom(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTop(I)V

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBottom(I)V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setLayoutTop(Landroid/view/View;I)V

    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isFirstLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setFirstLayout(Landroid/view/View;Z)V

    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setTop(Landroid/view/View;I)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {p1, v0, p3, v1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    return-void
.end method
