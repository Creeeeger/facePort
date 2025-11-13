.class public final Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenshot/ScreenshotViewProxy;


# instance fields
.field public final logger:Lcom/android/internal/logging/UiEventLogger;

.field public packageName:Ljava/lang/String;

.field public final screenshotPreview:Landroid/view/View;

.field public final view:Lcom/android/systemui/screenshot/ScreenshotView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0353

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/screenshot/ScreenshotView;

    iput-object p2, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    const-string p3, ""

    iput-object p3, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->packageName:Ljava/lang/String;

    iput-object p1, p2, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput p4, p2, Lcom/android/systemui/screenshot/ScreenshotView;->mDefaultDisplay:I

    new-instance p1, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$1;-><init>(Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;)V

    new-instance p3, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$addPredictiveBackListener$onBackInvokedCallback$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$addPredictiveBackListener$onBackInvokedCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$addPredictiveBackListener$1;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$addPredictiveBackListener$1;-><init>(Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance p1, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$2;-><init>(Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;)V

    new-instance p3, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$setOnKeyListener$1;

    invoke-direct {p3, p1}, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy$setOnKeyListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object p1, p2, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->screenshotPreview:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final addQuickShareChip(Landroid/app/Notification$Action;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->addQuickShareChip(Landroid/app/Notification$Action;)V

    return-void
.end method

.method public final announceForAccessibility(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final fadeForSharedTransition()V
    .locals 0

    return-void
.end method

.method public final getScreenshotPreview()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->screenshotPreview:Landroid/view/View;

    return-object p0
.end method

.method public final getView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    return-object p0
.end method

.method public final isAttachedToWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public final isDismissing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final requestDismissal(Lcom/android/systemui/screenshot/ScreenshotEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    iget-object v1, v1, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    iget-object v1, v1, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->logger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    iget-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/android/systemui/screenshot/FloatingWindowUtil;->dpToPx(Landroid/util/DisplayMetrics;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->createSwipeDismissAnimation(F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler$1;-><init>(Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    return-void
.end method

.method public final setCallbacks(Lcom/android/systemui/screenshot/ScreenshotController$3;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mCallbacks:Lcom/android/systemui/screenshot/ScreenshotController$3;

    return-void
.end method

.method public final setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public final stopInputListening()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->stopInputListening()V

    return-void
.end method

.method public final updateOrientation(Landroid/view/WindowInsets;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/LegacyScreenshotViewProxy;->view:Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->updateOrientation(Landroid/view/WindowInsets;)V

    return-void
.end method
