.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final alphaAnimator:Landroid/animation/ValueAnimator;

.field public animatedAlpha:F

.field public final animatedTranslationY:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final matrix:Landroid/graphics/Matrix;

.field public final surfaceBehind:Landroid/view/RemoteAnimationTarget;

.field public final tmpFloat:[F

.field public final translateYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final viewParams:Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->matrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->tmpFloat:[F

    new-instance p1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->animatedTranslationY:Landroidx/dynamicanimation/animation/FloatValueHolder;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    const p1, 0x43898000    # 275.0f

    const p3, 0x3f7ae148    # 0.98f

    invoke-static {p1, p3}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iput-object p1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$translateYSpring$1$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$translateYSpring$1$2;-><init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$translateYSpring$1$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$translateYSpring$1$3;-><init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;)V

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->translateYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$alphaAnimator$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$alphaAnimator$1$1;-><init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$alphaAnimator$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$alphaAnimator$1$2;-><init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;-><init>(FFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->viewParams:Lcom/android/systemui/keyguard/shared/model/KeyguardSurfaceBehindModel;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final applyToSurfaceBehind()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->surfaceBehind:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$applyToSurfaceBehind$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$applyToSurfaceBehind$1$1;-><init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;Landroid/view/SurfaceControl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final updateIsAnimatingSurface()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->translateYSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardSurfaceBehindInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardSurfaceBehindRepositoryImpl;->_isAnimatingSurface:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
