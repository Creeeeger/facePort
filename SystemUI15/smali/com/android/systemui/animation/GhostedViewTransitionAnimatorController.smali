.class public Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;


# static fields
.field public static final Companion:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;


# instance fields
.field public final background:Landroid/graphics/drawable/Drawable;

.field public backgroundDrawable:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;

.field public final backgroundInsets$delegate:Lkotlin/Lazy;

.field public backgroundView:Landroid/widget/FrameLayout;

.field public final component:Landroid/content/ComponentName;

.field public ghostView:Landroid/view/GhostView;

.field public final ghostViewMatrix:Landroid/graphics/Matrix;

.field public final ghostedView:Landroid/view/View;

.field public final ghostedViewLocation:[I

.field public final ghostedViewState:Lcom/android/systemui/animation/TransitionAnimator$State;

.field public final initialGhostViewMatrixValues:[F

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final isLaunching:Z

.field public final launchCujType:Ljava/lang/Integer;

.field public final returnCujType:Ljava/lang/Integer;

.field public startBackgroundAlpha:I

.field public transitionContainer:Landroid/view/ViewGroup;

.field public final transitionContainerLocation:[I

.field public final transitionCookie:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 9

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;)V
    .locals 9

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;)V
    .locals 9

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;)V
    .locals 9

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->launchCujType:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionCookie:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;

    iput-object p5, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->returnCujType:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->isLaunching:Z

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x2

    new-array p3, p1, [I

    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainerLocation:[I

    const/16 p3, 0x9

    new-array p4, p3, [F

    const/4 p5, 0x0

    move p6, p5

    :goto_0
    if-ge p6, p3, :cond_0

    const/4 v0, 0x0

    aput v0, p4, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->initialGhostViewMatrixValues:[F

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    new-instance p3, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$backgroundInsets$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$backgroundInsets$2;-><init>(Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    const/16 p3, 0xff

    iput p3, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->startBackgroundAlpha:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedViewLocation:[I

    new-instance p1, Lcom/android/systemui/animation/TransitionAnimator$State;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    instance-of p3, p1, Lcom/android/systemui/animation/LaunchableView;

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_4

    invoke-virtual {p3, p5}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_3
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    move p6, p5

    :goto_1
    if-ge p6, p4, :cond_2

    invoke-virtual {p1, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A GhostedViewLaunchAnimatorController was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, p5

    :goto_3
    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v4

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v1

    move-object p8, v4

    invoke-direct/range {p2 .. p8}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;Landroid/content/ComponentName;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 10

    new-instance v9, Lcom/android/systemui/animation/TransitionAnimator$State;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->getCurrentTopCornerRadius()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->getCurrentBottomCornerRadius()F

    move-result v6

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/TransitionAnimator$State;)V

    return-object v9
.end method

.method public final fillGhostedViewState(Lcom/android/systemui/animation/TransitionAnimator$State;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iget-object v2, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    instance-of v3, v2, Lcom/android/systemui/animation/LaunchableView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/systemui/animation/LaunchableView;

    invoke-interface {v2}, Lcom/android/systemui/animation/LaunchableView;->getPaddingForLaunchAnimation()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    const/4 v3, 0x1

    aget v3, v1, v3

    iget v4, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v4, v3

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iget-object v4, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v4

    add-int/2addr v4, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    const/4 v3, 0x0

    aget v1, v1, v3

    iget v3, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v3, v1

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iget-object v3, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr p0, v3

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr p0, v0

    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    iput p0, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    return-void
.end method

.method public getCurrentBottomCornerRadius()F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public getCurrentTopCornerRadius()F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    aget v0, v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getTransitionCookie()Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionCookie:Lcom/android/systemui/animation/ActivityTransitionAnimator$TransitionCookie;

    return-object p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->isLaunching:Z

    return p0
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostView:Landroid/view/GhostView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->isLaunching:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->launchCujType:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->returnCujType:Ljava/lang/Integer;

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->startBackgroundAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/systemui/animation/LaunchableView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast p1, Lcom/android/systemui/animation/LaunchableView;

    invoke-interface {p1, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/animation/LaunchableView;

    invoke-interface {p0}, Lcom/android/systemui/animation/LaunchableView;->onActivityLaunchAnimationEnd()V

    goto :goto_3

    :cond_6
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_3
    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostView:Landroid/view/GhostView;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v4, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    const/4 v5, 0x4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/GhostView;->getVisibility()I

    move-result v4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    invoke-virtual {v2, v6}, Landroid/view/GhostView;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/TransitionAnimator$State;

    invoke-virtual {v0, v4}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/TransitionAnimator$State;)V

    iget v7, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iget v8, v4, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    sub-int/2addr v7, v8

    iget v8, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    iget v9, v4, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iget v10, v4, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    sub-int/2addr v9, v10

    iget v10, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iget v11, v4, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$State;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4}, Lcom/android/systemui/animation/TransitionAnimator$State;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    iget-object v13, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    iget-object v14, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    invoke-static {v12, v13, v14}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    iget-object v13, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainerLocation:[I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    iget v14, v4, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    int-to-float v14, v14

    invoke-virtual {v4}, Lcom/android/systemui/animation/TransitionAnimator$State;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v15, v14

    aget v14, v13, v6

    int-to-float v14, v14

    sub-float/2addr v15, v14

    iget v14, v4, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    int-to-float v14, v14

    invoke-virtual {v4}, Lcom/android/systemui/animation/TransitionAnimator$State;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    add-float/2addr v4, v14

    const/4 v14, 0x1

    aget v5, v13, v14

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v12, v11, v11, v15, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v4, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    add-int/2addr v7, v8

    int-to-float v5, v7

    div-float v5, v5, v16

    add-int/2addr v9, v10

    int-to-float v7, v9

    div-float v7, v7, v16

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/view/GhostView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Insets;

    iget v4, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iget v5, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v4, v5

    iget v5, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iget v7, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v5, v7

    iget v7, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    iget v8, v2, Landroid/graphics/Insets;->right:I

    add-int/2addr v7, v8

    iget v8, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v8, v2

    aget v2, v13, v14

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTop(I)V

    aget v2, v13, v14

    sub-int/2addr v8, v2

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setBottom(I)V

    aget v2, v13, v6

    sub-int/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLeft(I)V

    aget v2, v13, v6

    sub-int/2addr v7, v2

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setRight(I)V

    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget v1, v1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    iget-object v0, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;

    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;->cornerRadii:[F

    aput v2, v3, v6

    aput v2, v3, v14

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v4, 0x3

    aput v2, v3, v4

    const/4 v2, 0x4

    aput v1, v3, v2

    const/4 v2, 0x5

    aput v1, v3, v2

    const/4 v2, 0x6

    aput v1, v3, v2

    const/4 v2, 0x7

    aput v1, v3, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    invoke-virtual {v2}, Landroid/view/GhostView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/view/GhostView;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final onTransitionAnimationStart(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const-string p0, "GhostedViewTransitionAnimatorController"

    const-string p1, "Skipping animation as ghostedView is not attached to a ViewGroup"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    :goto_0
    iput p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->startBackgroundAlpha:I

    new-instance p1, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$WrappedDrawable;

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/systemui/animation/LaunchableView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/systemui/animation/LaunchableView;

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostView:Landroid/view/GhostView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v1

    :goto_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_6
    if-eqz v1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostView:Landroid/view/GhostView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/GhostView;->getAnimationMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_8
    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_9
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->initialGhostViewMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-boolean p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->isLaunching:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->launchCujType:Ljava/lang/Integer;

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->returnCujType:Ljava/lang/Integer;

    :goto_4
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :cond_b
    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->transitionContainer:Landroid/view/ViewGroup;

    return-void
.end method
