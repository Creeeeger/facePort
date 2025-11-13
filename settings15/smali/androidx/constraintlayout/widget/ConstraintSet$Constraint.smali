.class public final Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

.field public mCustomConstraints:Ljava/util/HashMap;

.field public mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

.field public mTargetString:Ljava/lang/String;

.field public mViewId:I

.field public final motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

.field public final propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

.field public final transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mApply:Z

    const/4 v4, -0x1

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    const/4 v5, 0x0

    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    const/4 v6, -0x3

    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mApply:Z

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iput-object v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    const/4 v5, 0x0

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    const/high16 v8, -0x80000000

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v7, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method public static access$000(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    return-void
.end method


# virtual methods
.method public final applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    return-void
.end method

.method public final clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 4

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Layout;)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Motion;)V

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Transform;)V

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    iput-object p0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p0

    return-object p0
.end method
