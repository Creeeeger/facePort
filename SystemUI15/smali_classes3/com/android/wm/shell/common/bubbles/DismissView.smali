.class public final Lcom/android/wm/shell/common/bubbles/DismissView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final DISMISS_SCRIM_FADE_MS:J

.field public final GRADIENT_ALPHA:Lcom/android/wm/shell/common/bubbles/DismissView$GRADIENT_ALPHA$1;

.field public final animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public final circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

.field public config:Lcom/android/wm/shell/common/bubbles/DismissView$Config;

.field public final dismissArea:Landroid/graphics/Rect;

.field public gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public isBeingEntered:Z

.field public isShowing:Z

.field public final spring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/common/bubbles/DismissView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/common/bubbles/DismissView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/wm/shell/common/bubbles/DismissView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/common/bubbles/DismissView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/bubbles/DismissCircleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    sget-object v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    new-instance v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->spring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:J

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->wm:Landroid/view/WindowManager;

    new-instance p1, Lcom/android/wm/shell/common/bubbles/DismissView$GRADIENT_ALPHA$1;

    invoke-direct {p1}, Lcom/android/wm/shell/common/bubbles/DismissView$GRADIENT_ALPHA$1;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->GRADIENT_ALPHA:Lcom/android/wm/shell/common/bubbles/DismissView$GRADIENT_ALPHA$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->dismissArea:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->isShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/wm/shell/common/bubbles/DismissView;->TAG:Ljava/lang/String;

    const-string v2, "The view isn\'t ready. Should be called after `setup`"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->isShowing:Z

    iget-object v2, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->GRADIENT_ALPHA:Lcom/android/wm/shell/common/bubbles/DismissView$GRADIENT_ALPHA$1;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v3

    filled-new-array {v3, v1}, [I

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->isBeingEntered:Z

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->spring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    new-instance v1, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/bubbles/DismissView$hide$1;-><init>(Lcom/android/wm/shell/common/bubbles/DismissView;)V

    filled-new-array {v1}, [Lkotlin/jvm/functions/Function0;

    move-result-object p0

    iget-object v1, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public final setup(Lcom/android/wm/shell/common/bubbles/DismissView$Config;)V
    .locals 6

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->config:Lcom/android/wm/shell/common/bubbles/DismissView$Config;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientHeightResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v3, 0x50

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->config:Lcom/android/wm/shell/common/bubbles/DismissView$Config;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/common/bubbles/DismissView;->TAG:Ljava/lang/String;

    const-string v3, "The view isn\'t ready. Should be called after `setup`"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v0, v0, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->bottomMarginResId:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->floatingGradientColorResId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v3, 0x43328000    # 178.5f

    float-to-int v3, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iput-object v3, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    iget v1, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->dismissViewResId:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    iget v1, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconResId:I

    iget v3, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->iconSizeResId:I

    iget v4, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->backgroundResId:I

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/wm/shell/common/bubbles/DismissCircleView;->setup(III)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;->targetSizeResId:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x51

    invoke-direct {v1, p1, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/bubbles/DismissCircleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public final show()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->isShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/wm/shell/common/bubbles/DismissView;->TAG:Ljava/lang/String;

    const-string v2, "The view isn\'t ready. Should be called after `setup`"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->isShowing:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->GRADIENT_ALPHA:Lcom/android/wm/shell/common/bubbles/DismissView$GRADIENT_ALPHA$1;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->animator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    new-instance v1, Lcom/android/wm/shell/common/bubbles/DismissView$show$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/bubbles/DismissView$show$1;-><init>(Lcom/android/wm/shell/common/bubbles/DismissView;)V

    filled-new-array {v1}, [Lkotlin/jvm/functions/Function0;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/DismissView;->spring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    return-void
.end method
