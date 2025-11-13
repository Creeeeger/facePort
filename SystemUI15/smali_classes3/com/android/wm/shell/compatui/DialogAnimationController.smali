.class public final Lcom/android/wm/shell/compatui/DialogAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DRAWABLE_ALPHA:Lcom/android/wm/shell/compatui/DialogAnimationController$3;

.field public static final ENTER_ANIM_START_DELAY_MILLIS:I


# instance fields
.field public final mAnimStyleResId:I

.field public mBackgroundDimAnimator:Landroid/animation/Animator;

.field public mDialogAnimation:Landroid/view/animation/Animation;

.field public final mPackageName:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    sput v0, Lcom/android/wm/shell/compatui/DialogAnimationController;->ENTER_ANIM_START_DELAY_MILLIS:I

    new-instance v0, Lcom/android/wm/shell/compatui/DialogAnimationController$3;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/wm/shell/compatui/DialogAnimationController$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/compatui/DialogAnimationController;->DRAWABLE_ALPHA:Lcom/android/wm/shell/compatui/DialogAnimationController$3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x10302d6

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mAnimStyleResId:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final cancelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    :cond_1
    return-void
.end method

.method public final loadAnimation(I)Landroid/view/animation/Animation;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mAnimStyleResId:I

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Failed to load animation "

    invoke-static {p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public final startEnterAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->cancelAnimation()V

    invoke-interface {p1}, Lcom/android/wm/shell/compatui/DialogContainerSupplier;->getDialogContainerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/DialogAnimationController;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v2, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    new-instance v3, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;Ljava/lang/Runnable;)V

    new-instance p2, Lcom/android/wm/shell/compatui/DialogAnimationController$1;

    invoke-direct {p2, p0, v2, v3}, Lcom/android/wm/shell/compatui/DialogAnimationController$1;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-interface {p1}, Lcom/android/wm/shell/compatui/DialogContainerSupplier;->getBackgroundDimDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    sget-object p2, Lcom/android/wm/shell/compatui/DialogAnimationController;->DRAWABLE_ALPHA:Lcom/android/wm/shell/compatui/DialogAnimationController$3;

    const/16 v3, 0xcc

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    new-instance p2, Lcom/android/wm/shell/compatui/DialogAnimationController$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/compatui/DialogAnimationController$2;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    sget p2, Lcom/android/wm/shell/compatui/DialogAnimationController;->ENTER_ANIM_START_DELAY_MILLIS:I

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final startExitAnimation(Lcom/android/wm/shell/compatui/DialogContainerSupplier;Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->cancelAnimation()V

    invoke-interface {p1}, Lcom/android/wm/shell/compatui/DialogContainerSupplier;->getDialogContainerView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/compatui/DialogAnimationController;->loadAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v2, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/wm/shell/compatui/DialogAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;Landroid/view/View;Ljava/lang/Runnable;)V

    new-instance p2, Lcom/android/wm/shell/compatui/DialogAnimationController$1;

    invoke-direct {p2, p0, v2, v3}, Lcom/android/wm/shell/compatui/DialogAnimationController$1;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-interface {p1}, Lcom/android/wm/shell/compatui/DialogContainerSupplier;->getBackgroundDimDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    sget-object p2, Lcom/android/wm/shell/compatui/DialogAnimationController;->DRAWABLE_ALPHA:Lcom/android/wm/shell/compatui/DialogAnimationController$3;

    const/4 v3, 0x0

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iput-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    new-instance p2, Lcom/android/wm/shell/compatui/DialogAnimationController$2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/compatui/DialogAnimationController$2;-><init>(Lcom/android/wm/shell/compatui/DialogAnimationController;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mDialogAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/DialogAnimationController;->mBackgroundDimAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
