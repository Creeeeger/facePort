.class public final Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;
.super Lcom/android/wm/shell/back/CrossActivityBackAnimation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public closeAnimation:Landroid/view/animation/Animation;

.field public final customAnimationLoader:Lcom/android/wm/shell/back/CustomAnimationLoader;

.field public enterAnimation:Landroid/view/animation/Animation;

.field public final transformation:Landroid/view/animation/Transformation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 6

    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v5, Lcom/android/wm/shell/back/CustomAnimationLoader;

    new-instance v0, Lcom/android/internal/policy/TransitionAnimation;

    const/4 v1, 0x0

    const-string v2, "CustomCrossActivityBackAnimation"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    invoke-direct {v5, v0}, Lcom/android/wm/shell/back/CustomAnimationLoader;-><init>(Lcom/android/internal/policy/TransitionAnimation;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/back/CustomAnimationLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/back/CustomAnimationLoader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;)V

    iput-object p5, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->customAnimationLoader:Lcom/android/wm/shell/back/CustomAnimationLoader;

    new-instance p1, Landroid/view/animation/Transformation;

    invoke-direct {p1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    return-void
.end method


# virtual methods
.method public final finishAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->closeAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->closeAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    :cond_1
    iput-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    invoke-super {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->finishAnimation()V

    return-void
.end method

.method public final getAllowEnteringYShift()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPostCommitAnimationDuration()J
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->closeAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPostCommitProgress(Landroid/view/animation/Animation;F)F
    .locals 6

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->getPostCommitAnimationDuration()J

    move-result-wide v2

    long-to-float p0, v2

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-float p1, v2

    div-float/2addr p0, p1

    mul-float/2addr p0, p2

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    return v1
.end method

.method public final getPreCommitEnteringBaseTransformation(F)Landroid/view/animation/Transformation;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    return-object p0
.end method

.method public final onPostCommitProgress(F)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->onPostCommitProgress(F)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->closeAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->getPostCommitProgress(Landroid/view/animation/Animation;F)F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->closeAnimation:Landroid/view/animation/Animation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v7, Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;->FLING_SHRINK:Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    iget-object v2, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v0, v2}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;)V

    iget v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->gestureProgress:F

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1}, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->getPostCommitProgress(Landroid/view/animation/Animation;F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->currentEnteringRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v6, Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;->NO_FLING:Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    iget-object v5, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->transformation:Landroid/view/animation/Transformation;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;FLandroid/view/animation/Transformation;Lcom/android/wm/shell/back/CrossActivityBackAnimation$FlingMode;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->applyTransaction()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final prepareNextAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)Z
    .locals 4

    iput p2, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->letterboxColor:I

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->customAnimationLoader:Lcom/android/wm/shell/back/CustomAnimationLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/back/CustomAnimationLoader;->loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/back/CustomAnimationLoader;->loadAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;Z)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v3, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$AnimationLoadResult;

    invoke-direct {v3}, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$AnimationLoadResult;-><init>()V

    iput-object v1, v3, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$AnimationLoadResult;->closeAnimation:Landroid/view/animation/Animation;

    iput-object v0, v3, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$AnimationLoadResult;->enterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->getCustomBackground()I

    move-result p1

    iput p1, v3, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$AnimationLoadResult;->backgroundColor:I

    :goto_0
    if-eqz v3, :cond_3

    iget-object p1, v3, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$AnimationLoadResult;->closeAnimation:Landroid/view/animation/Animation;

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->closeAnimation:Landroid/view/animation/Animation;

    iget-object p1, v3, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$AnimationLoadResult;->enterAnimation:Landroid/view/animation/Animation;

    iput-object p1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    iget p1, v3, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation$AnimationLoadResult;->backgroundColor:I

    iput p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->customizedBackgroundColor:I

    return v2

    :cond_3
    return p2
.end method

.method public final preparePreCommitClosingRectMovement(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->backAnimRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    const v1, 0x3f666666    # 0.9f

    invoke-static {v0, v1}, Lcom/android/wm/shell/back/CrossActivityBackAnimationKt;->scaleCentered$default(Landroid/graphics/RectF;F)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->displayBoundsMargin:F

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    sub-float/2addr p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    add-float/2addr p1, v1

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetClosingRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public final preparePreCommitEnteringRectMovement()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startEnteringRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->targetEnteringRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startClosingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final startBackAnimation(Landroid/window/BackMotionEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->startBackAnimation(Landroid/window/BackMotionEvent;)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->closeAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->closingTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/back/CustomCrossActivityBackAnimation;->enterAnimation:Landroid/view/animation/Animation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/back/CrossActivityBackAnimation;->enteringTarget:Landroid/view/RemoteAnimationTarget;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1, v0, p0, v0, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Enter animation or close animation is null."

    invoke-static {p0, v0, p1}, Lcom/android/internal/protolog/common/ProtoLog;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
