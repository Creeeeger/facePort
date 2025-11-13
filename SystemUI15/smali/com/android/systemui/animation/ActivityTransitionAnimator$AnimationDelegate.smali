.class public final Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animation:Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;

.field public final callback:Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;

.field public cancelled:Z

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

.field public final invertMatrix:Landroid/graphics/Matrix;

.field public final listener:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final matrix:Landroid/graphics/Matrix;

.field public final onLongTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onLongTimeout$1;

.field public final onTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;

.field public timedOut:Z

.field public final timeoutHandler:Landroid/os/Handler;

.field public final transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final transactionApplierView:Landroid/view/View;

.field public final transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

.field public final transitionContainer:Landroid/view/ViewGroup;

.field public final windowCrop:Landroid/graphics/Rect;

.field public final windowCropF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;)V
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

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;)V
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

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lcom/android/systemui/animation/TransitionAnimator;)V
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

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lcom/android/systemui/animation/TransitionAnimator;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->callback:Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;

    iput-object p4, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->listener:Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;

    iput-object p5, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transitionAnimator:Lcom/android/systemui/animation/TransitionAnimator;

    invoke-interface {p2}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transitionContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->context:Landroid/content/Context;

    invoke-interface {p2}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transactionApplierView:Landroid/view/View;

    new-instance p3, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p3, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    if-nez p6, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->timeoutHandler:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->invertMatrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCrop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->windowCropF:Landroid/graphics/RectF;

    new-instance p1, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;)V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onTimeout$1;

    sget-object p1, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onLongTimeout$1;->INSTANCE:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onLongTimeout$1;

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;->onLongTimeout:Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate$onLongTimeout$1;

    invoke-interface {p2}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shared/Flags;->returnAnimationFrameworkLibrary()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "isLaunching cannot be false when the returnAnimationFrameworkLibrary flag is disabled"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lcom/android/systemui/animation/TransitionAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    sget-object p4, Lcom/android/systemui/animation/ActivityTransitionAnimator;->Companion:Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;

    invoke-static {p4, p1}, Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;->access$defaultTransitionAnimator(Lcom/android/systemui/animation/ActivityTransitionAnimator$Companion;Ljava/util/concurrent/Executor;)Lcom/android/systemui/animation/TransitionAnimator;

    move-result-object p5

    :cond_1
    move-object v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/4 p6, 0x0

    :cond_2
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ActivityTransitionAnimator$AnimationDelegate;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/animation/ActivityTransitionAnimator$Callback;Lcom/android/systemui/animation/ActivityTransitionAnimator$Listener;Lcom/android/systemui/animation/TransitionAnimator;Z)V

    return-void
.end method
