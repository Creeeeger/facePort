.class public Landroid/view/InsetsResizeAnimationRunner;
.super Ljava/lang/Object;
.source "InsetsResizeAnimationRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlRunner;
.implements Landroid/view/InternalInsetsAnimationController;
.implements Landroid/view/WindowInsetsAnimationControlListener;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsResizeAnimRunner"


# instance fields
.field private final blacklist mAnimation:Landroid/view/WindowInsetsAnimation;

.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mCancelled:Z

.field private final blacklist mController:Landroid/view/InsetsAnimationControlCallbacks;

.field private blacklist mFinished:Z

.field private final blacklist mFromState:Landroid/view/InsetsState;

.field private blacklist mImeSourceControl:Landroid/view/InsetsSourceControl;

.field private final blacklist mTmpFloat9:[F

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mToState:Landroid/view/InsetsState;

.field private final blacklist mTypes:I


# direct methods
.method public static synthetic blacklist $r8$lambda$ISS11IaXBeR3DU0xwVF986dFNKU(Landroid/view/InsetsResizeAnimationRunner;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/InsetsResizeAnimationRunner;->lambda$onReady$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmController(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsAnimationControlCallbacks;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImeSourceControl(Landroid/view/InsetsResizeAnimationRunner;)Landroid/view/InsetsSourceControl;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsResizeAnimationRunner;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTmpMatrix(Landroid/view/InsetsResizeAnimationRunner;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTmpMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFinished(Landroid/view/InsetsResizeAnimationRunner;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImeLeashSurfaceParam(Landroid/view/InsetsResizeAnimationRunner;Landroid/view/InsetsSource;I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/InsetsResizeAnimationRunner;->getImeLeashSurfaceParam(Landroid/view/InsetsSource;I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/animation/Interpolator;JILandroid/view/InsetsAnimationControlCallbacks;Landroid/view/InsetsController;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v6, Landroid/view/InsetsResizeAnimationRunner;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, v6, Landroid/view/InsetsResizeAnimationRunner;->mTmpFloat9:[F

    iput-object v8, v6, Landroid/view/InsetsResizeAnimationRunner;->mFromState:Landroid/view/InsetsState;

    iput-object v9, v6, Landroid/view/InsetsResizeAnimationRunner;->mToState:Landroid/view/InsetsState;

    iput v10, v6, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    move-object/from16 v11, p8

    iput-object v11, v6, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    new-instance v0, Landroid/view/WindowInsetsAnimation;

    move-object/from16 v12, p4

    move-wide/from16 v13, p5

    invoke-direct {v0, v10, v12, v13, v14}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, v6, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget-object v0, v6, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v0, :cond_0

    iget v0, v6, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    nop

    invoke-virtual/range {p9 .. p9}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/InsetsSourceControl;

    invoke-direct {v1, v0}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    iput-object v1, v6, Landroid/view/InsetsResizeAnimationRunner;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v8, v7, v10, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v15

    invoke-virtual {v9, v7, v10, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    iget-object v4, v6, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    new-instance v3, Landroid/view/WindowInsetsAnimation$Bounds;

    invoke-static {v15, v5}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v15, v5}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    move-object/from16 v0, p8

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v16, v3

    move/from16 v3, p7

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    invoke-interface/range {v0 .. v5}, Landroid/view/InsetsAnimationControlCallbacks;->startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V

    return-void
.end method

.method private blacklist getImeLeashSurfaceParam(Landroid/view/InsetsSource;I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .locals 5

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/InsetsResizeAnimationRunner;->mImeSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getMinimizedInsetHint()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mTmpFloat9:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private synthetic blacklist lambda$onReady$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-interface {v0, p0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    return-void
.end method


# virtual methods
.method public blacklist applyChangeInsets(Landroid/view/InsetsState;)Z
    .locals 4

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFromState:Landroid/view/InsetsState;

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mToState:Landroid/view/InsetsState;

    new-instance v3, Landroid/view/InsetsResizeAnimationRunner$2;

    invoke-direct {v3, p0, v0, p1}, Landroid/view/InsetsResizeAnimationRunner$2;-><init>(Landroid/view/InsetsResizeAnimationRunner;FLandroid/view/InsetsState;)V

    invoke-static {v1, v2, v3}, Landroid/view/InsetsState;->traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V

    iget-boolean v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    :cond_1
    iget-boolean v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    return v1
.end method

.method public blacklist cancel()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/view/InsetsResizeAnimationRunner;->mFinished:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10900000003L

    const-string/jumbo v4, "null"

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000004L

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v2}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v2

    const-wide v3, 0x10200000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10800000006L

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10200000007L

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10200000008L

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist finish(Z)V
    .locals 0

    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getControllingTypes()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    return v0
.end method

.method public whitelist getCurrentAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentFraction()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentInsets()Landroid/graphics/Insets;
    .locals 1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getHiddenStateInsets()Landroid/graphics/Insets;
    .locals 1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getShownStateInsets()Landroid/graphics/Insets;
    .locals 1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTypes()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mTypes:I

    return v0
.end method

.method public blacklist hasZeroInsetsIme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCancelRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    return v0
.end method

.method public whitelist isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    return v0
.end method

.method public whitelist isFinished()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .locals 0

    return-void
.end method

.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsResizeAnimationRunner;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/InsetsResizeAnimationRunner$1;

    invoke-direct {v1, p0}, Landroid/view/InsetsResizeAnimationRunner$1;-><init>(Landroid/view/InsetsResizeAnimationRunner;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
    .locals 0

    return-void
.end method

.method public blacklist setReadyDispatched(Z)V
    .locals 0

    return-void
.end method

.method public blacklist updateLayoutInsetsDuringAnimation(I)V
    .locals 0

    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
