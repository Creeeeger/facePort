.class public final Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotViewProxy;


# instance fields
.field public final animationController:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

.field public callbacks:Lcom/android/systemui/screenshot/ScreenshotController$3;

.field public final displayId:I

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field public isDismissing:Z

.field public final logger:Lcom/android/internal/logging/UiEventLogger;

.field public packageName:Ljava/lang/String;

.field public final screenshotPreview:Landroid/view/View;

.field public final view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

.field public final viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;Landroid/view/WindowManager;Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder;Lcom/android/systemui/screenshot/ThumbnailObserver;Landroid/content/Context;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->logger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->windowManager:Landroid/view/WindowManager;

    iput p7, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->displayId:I

    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p5, 0x7f0d0355

    const/4 p7, 0x0

    invoke-virtual {p1, p5, p7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    const-string p5, ""

    iput-object p5, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    invoke-direct {v3, p1, p2}, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;)V

    iput-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->animationController:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder;->bind(Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->updateInsets(Landroid/view/WindowInsets;)V

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V

    new-instance p3, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$onBackInvokedCallback$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$onBackInvokedCallback$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$addPredictiveBackListener$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V

    new-instance p3, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$setOnKeyListener$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$setOnKeyListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget p2, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    const-class p2, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$6;

    invoke-direct {p3, p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$6;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object p2, p1, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->screenshotPreview:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    move-object p7, p2

    :cond_0
    iput-object p7, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->screenshotPreview:Landroid/view/View;

    const p2, 0x7f0a0a4e

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$7;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public static final access$getTouchRegion(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)Landroid/graphics/Region;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->displayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v3, -0x3ec00000    # -12.0f

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->screenshotPreview:Landroid/widget/ImageView;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->addInsetView(Landroid/graphics/Region;Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->actionsContainerBackground:Landroid/view/View;

    if-nez v3, :cond_1

    move-object v3, v4

    :cond_1
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->addInsetView(Landroid/graphics/Region;Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->dismissButton:Landroid/view/View;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    invoke-virtual {p0, v1, v4, v2}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->addInsetView(Landroid/graphics/Region;Landroid/view/View;I)V

    const v3, 0x7f0a0a49

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->addInsetView(Landroid/graphics/Region;Landroid/view/View;I)V

    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Insets;->left:I

    iget-object v4, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    sub-int v0, v4, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0, v5, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-object v1
.end method


# virtual methods
.method public final addQuickShareChip(Landroid/app/Notification$Action;)V
    .locals 0

    return-void
.end method

.method public final announceForAccessibility(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final fadeForSharedTransition()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->animationController:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$fadeForSharedTransition$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$fadeForSharedTransition$1;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getScreenshotPreview()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->screenshotPreview:Landroid/view/View;

    return-object p0
.end method

.method public final getView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    return-object p0
.end method

.method public final isAttachedToWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public final isDismissing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->isDismissing:Z

    return p0
.end method

.method public final requestDismissal(Lcom/android/systemui/screenshot/ScreenshotEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->requestDismissal(Lcom/android/systemui/screenshot/ScreenshotEvent;Ljava/lang/Float;)V

    return-void
.end method

.method public final requestDismissal(Lcom/android/systemui/screenshot/ScreenshotEvent;Ljava/lang/Float;)V
    .locals 5

    const/4 v0, 0x0

    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    const-class v1, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->isDismissing:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->logger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->packageName:Ljava/lang/String;

    invoke-interface {v1, p1, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->animationController:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    iget-object v1, p1, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->animator:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-object v1, p1, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->view:Lcom/android/systemui/screenshot/ui/ScreenshotShelfView;

    const/high16 v2, 0x3fc00000    # 1.5f

    if-nez p2, :cond_3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-nez p2, :cond_4

    const/high16 v2, -0x40400000    # -1.5f

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float v2, p2, v3

    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    iget-object p2, p1, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->actionContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr p2, v3

    goto :goto_1

    :cond_5
    iget-object v3, p1, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->actionContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr p2, v3

    int-to-float p2, p2

    :goto_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    sub-float v3, p2, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v1, v4, v0

    const/4 v0, 0x1

    aput p2, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$1;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$$inlined$doOnStart$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$$inlined$doOnStart$1;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$$inlined$doOnEnd$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController$getSwipeDismissAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p2, p1, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->animator:Landroid/animation/Animator;

    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$requestDismissal$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy$requestDismissal$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;)V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->animationController:Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ui/ScreenshotAnimationController;->animator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_preview:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_scrollingScrim:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_badge:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_previewAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_actions:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v2, Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;->NOT_STARTED:Lcom/android/systemui/screenshot/ui/viewmodel/AnimationState;

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_isAnimating:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_scrollableRect:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCallbacks(Lcom/android/systemui/screenshot/ScreenshotController$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->callbacks:Lcom/android/systemui/screenshot/ScreenshotController$3;

    return-void
.end method

.method public final setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final stopInputListening()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->inputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotShelfViewProxy;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    return-void
.end method

.method public final updateOrientation(Landroid/view/WindowInsets;)V
    .locals 0

    return-void
.end method
