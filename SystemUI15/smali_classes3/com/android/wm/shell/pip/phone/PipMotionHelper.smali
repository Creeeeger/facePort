.class public final Lcom/android/wm/shell/pip/phone/PipMotionHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/pip/PipAppOpsListener$Callback;
.implements Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;


# instance fields
.field public final mCatchUpSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mConflictResolutionSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final mContext:Landroid/content/Context;

.field public final mEdgePanelSupport:Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;

.field public mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public final mFloatingAllowedArea:Landroid/graphics/Rect;

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public final mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

.field public final mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTransitionCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;

.field public mPostPipTransitionCallback:Ljava/lang/Runnable;

.field public final mResizePipUpdateListener:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda4;

.field public final mSizeSpecSource:Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

.field public final mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

.field public final mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public mSpringingToTouch:Z

.field public mStashConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

.field public mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mUpdateBoundsCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/common/FloatingContentCoordinator;Ljava/util/Optional;Lcom/android/wm/shell/common/pip/SizeSpecSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/pip/PipBoundsState;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/pip/PipPerfHintController;",
            ">;",
            "Lcom/android/wm/shell/common/pip/SizeSpecSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x442f0000    # 700.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x44bb8000    # 1500.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const v1, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mCatchUpSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mConflictResolutionSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    const/4 p2, 0x0

    invoke-virtual {p8, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    iget-object p2, p6, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mResizePipUpdateListener:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda4;

    new-instance p2, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mEdgePanelSupport:Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;

    check-cast p9, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    iput-object p9, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    return-void
.end method


# virtual methods
.method public final adjustPipBoundsForEdge(Landroid/graphics/Rect;)V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mEdgePanelSupport:Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "edge_enable"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "active_edge_area"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;->getEdgeHandlePixelSize()I

    move-result v7

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne p0, v8, :cond_1

    iget-object p0, v0, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    const-string/jumbo p0, "ro.build.characteristics"

    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v10, "tablet"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v9

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v10, "edge_handler_position_percent"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;->percentToPixel(F)I

    move-result p0

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;->getEdgeHandlePixelSize()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipEdgePanelSupport;->getUpperMostPosition()I

    move-result v0

    sub-int/2addr p0, v10

    add-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v11, "getEdgeHandleMarginOnTop retY="

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v11, " halfHandleSize="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, "EdgePanelSupport"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/2addr v7, p0

    if-ne v6, v4, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v10, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    if-gt v0, v10, :cond_3

    :cond_2
    if-nez v6, :cond_8

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v10, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    if-gt v0, v10, :cond_8

    :cond_3
    if-ne v6, v4, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    iget v11, p1, Landroid/graphics/Rect;->top:I

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v10, v11, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    iget v10, p1, Landroid/graphics/Rect;->top:I

    iget v11, p1, Landroid/graphics/Rect;->right:I

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    if-ne v6, v4, :cond_5

    new-instance v4, Landroid/graphics/Rect;

    add-int/lit8 v6, v5, -0x1

    invoke-direct {v4, v6, p0, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v9, p0, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipEdgeMargin:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v1, v8

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    div-int/lit8 v4, v7, 0x2

    add-int/2addr v4, p0

    if-ge v4, v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v7

    add-int/2addr v1, v0

    if-ge v1, v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, p0, v1

    sub-int/2addr v1, v0

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_7

    :goto_4
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p1, p0, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_7
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p0, v0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 9

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-gez v0, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v2, v0, p2, p4}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    :cond_0
    move v4, p2

    iget v5, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    iget v6, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    iget-object p2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {p2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getStashInsets()Landroid/graphics/Rect;

    move-result-object v8

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked$1(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public final cancelPhysicsAnimation$1()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    return-void
.end method

.method public final dismissPip()V
    .locals 7

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[PipMotionHelper] removePip: callers=\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "    "

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PipTaskOrganizer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v2, "PipMotionHelper"

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, -0x5b0556f08972c3c8L

    const/4 v4, 0x0

    const-string v5, "%s: removePip: callers=\n%s"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation$1()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePip()V

    return-void
.end method

.method public final expandLeavePip$1(ZZ)V
    .locals 10

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string v0, "[PipMotionHelper] exitPip: skipAnimation="

    const-string v1, " callers=\n"

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "    "

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PipTaskOrganizer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v2, "PipMotionHelper"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, -0x304b0d9b30aec3fbL    # -9.474529725240322E75

    const/4 v7, 0x0

    const-string v8, "%s: exitPip: skipAnimation=%s callers=\n%s"

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation$1()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x12c

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {p0, v3, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->exitPip(IZ)V

    return-void
.end method

.method public final getAllowedFloatingBoundsRegion()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getFloatingBoundsOnScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final movePip(Landroid/graphics/Rect;Z)V
    .locals 9

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    const/4 v2, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation$1()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    if-nez p2, :cond_6

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v2, 0x0

    aget-boolean p2, p2, v2

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    const-string v3, "    "

    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "PipMotionHelper"

    filled-new-array {v4, p2, v2}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x0

    const-string v7, "%s: resizePipUnchecked: toBounds=%s callers=\n%s"

    const-wide v4, -0x7116398d31bccbdbL    # -7.916537705472709E-237

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    if-eqz p2, :cond_4

    iget-object p2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    check-cast p2, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v4, v4, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {v4}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v4

    invoke-virtual {v3, v2, v4, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    invoke-interface {v2}, Lcom/android/wm/shell/common/pip/PipMenuController;->isMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/wm/shell/common/pip/PipMenuController;->resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p2, 0x3

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_5

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p0, "PipTaskOrganizer"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v7

    const-string v6, "%s: Abort animation, invalid leash"

    const-wide v3, 0x45977d68f2aa35d7L    # 1.8174416389584988E27

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_6
    iget-object p2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->setBoundsInMotion(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V

    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->setStashDimOverlayAlpha(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mCatchUpSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p2, v0, v3, v2, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1, v2, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1, v2, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1, v2, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->startBoundsAnimator$1(FFLjava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method public final moveToBounds(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->setBoundsInMotion(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mConflictResolutionSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->startBoundsAnimator$1(FFLjava/lang/Runnable;)V

    return-void
.end method

.method public final movetoTarget$1(FFLjava/lang/Runnable;Z)V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v3, v3, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    iget-object v3, v3, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->pipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_1

    iget v6, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    add-int/2addr v5, v3

    invoke-virtual {p2, v6, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->adjustPipBoundsForEdge(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, p2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iput v3, p2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    move p2, v2

    :cond_2
    iget-object v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v10, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v4, v10, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    cmpl-float v5, p1, v2

    if-nez v5, :cond_3

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-ge v5, v6, :cond_3

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v4, v3, :cond_3

    sget p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string p1, "PipTaskOrganizer"

    const-string v3, "movetoTarget: make velocity as negative"

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, -0x40800000    # -1.0f

    :cond_3
    iget-object v9, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    sget-object v3, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_WIDTH$1;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v9, v3, v4, v2, v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v3, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_HEIGHT$1;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v9, v3, v4, v2, v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    sget-object v4, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mStashConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    :goto_1
    move-object v6, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigX:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    goto :goto_1

    :goto_2
    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v8, 0x1

    move-object v3, v9

    move v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Z)V

    sget-object v5, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_Y$1;

    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    move-object v4, v9

    move v6, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Z)V

    iget-object v3, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p4, :cond_5

    iget v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    :goto_3
    int-to-float v4, v4

    goto :goto_4

    :cond_5
    iget-object v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :goto_4
    if-eqz p4, :cond_6

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget v1, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    :goto_5
    int-to-float p4, p4

    goto :goto_6

    :cond_6
    iget-object p4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :goto_6
    cmpg-float p1, p1, v2

    if-gez p1, :cond_7

    goto :goto_7

    :cond_7
    move v4, p4

    :goto_7
    iget-object p1, v10, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    invoke-static {p1, p2, p4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->estimateFlingEndValue(FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;)F

    move-result p1

    invoke-virtual {p0, v4, p1, p3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->startBoundsAnimator$1(FFLjava/lang/Runnable;)V

    return-void
.end method

.method public final resizeAndAnimatePipUnchecked$1(Landroid/graphics/Rect;)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/16 v1, 0xfa

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "    "

    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "PipMotionHelper"

    filled-new-array {v5, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, 0x63eb7e1fe3c131c5L    # 2.1249294131726848E173

    const/4 v7, 0x0

    const-string v8, "%s: resizeAndAnimatePipUnchecked: toBounds=%s duration=%s callers=\n%s"

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    return-void
.end method

.method public final setStashDimOverlayAlpha(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->clearStashDimOverlay()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const v4, 0x3f266666    # 0.65f

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float v0, v1

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setStashDimOverlayAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_2

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    mul-float/2addr p1, v4

    int-to-float v0, v1

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setStashDimOverlayAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final startBoundsAnimator$1(FFLjava/lang/Runnable;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation$1()V

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {v0, p1, p2, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object p1, p1, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V

    const-string/jumbo v0, "startBoundsAnimator"

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController;->startSession(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mResizePipUpdateListener:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda4;

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V

    aput-object v2, v0, p2

    aput-object p3, v0, p1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v1, p3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, p1, [Ljava/lang/Runnable;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V

    aput-object v0, p1, p2

    invoke-virtual {p3, p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->start()V

    return-void
.end method

.method public final synchronizePinnedStackBounds()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation$1()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    :cond_0
    return-void
.end method
