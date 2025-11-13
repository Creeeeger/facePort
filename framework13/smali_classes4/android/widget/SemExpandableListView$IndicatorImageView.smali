.class Landroid/widget/SemExpandableListView$IndicatorImageView;
.super Landroid/widget/ImageView;
.source "SemExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorImageView"
.end annotation


# static fields
.field private static final blacklist ANIMATION_DURATION:I = 0x12c


# instance fields
.field private blacklist ARROW_PADDING:F

.field blacklist childPos:I

.field blacklist groupPos:I

.field blacklist mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private blacklist mCenterX:F

.field private blacklist mCenterY:F

.field private blacklist mEndPointX:F

.field private blacklist mEndPointY:F

.field private blacklist mHeight:F

.field private blacklist mIndicatorArrowHeight:F

.field private blacklist mMorphingAnimatedValue:F

.field private blacklist mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

.field private blacklist mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

.field private blacklist mPaddingValue:F

.field private blacklist mPath:Landroid/graphics/Path;

.field private blacklist mStartPointX:F

.field private blacklist mStartPointY:F

.field blacklist mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private blacklist mWidth:F

.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmMorphingAnimatedValue(Landroid/widget/SemExpandableListView$IndicatorImageView;F)V
    .locals 0

    iput p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprintAnimationInfo(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->printAnimationInfo(Landroid/animation/Animator;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .line 2739
    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    .line 2740
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2725
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    .line 2728
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    .line 2733
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    .line 2736
    iget p1, p1, Landroid/widget/SemExpandableListView;->mIndicatorPaddingHeight:F

    iput p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->ARROW_PADDING:F

    .line 2737
    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    .line 2777
    new-instance p1, Landroid/widget/SemExpandableListView$IndicatorImageView$1;

    invoke-direct {p1, p0}, Landroid/widget/SemExpandableListView$IndicatorImageView$1;-><init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V

    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2791
    new-instance p1, Landroid/widget/SemExpandableListView$IndicatorImageView$2;

    invoke-direct {p1, p0}, Landroid/widget/SemExpandableListView$IndicatorImageView$2;-><init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V

    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 2741
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->semSetHoverPopupType(I)V

    .line 2742
    return-void
.end method

.method private blacklist initArrow()V
    .locals 11

    .line 2835
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mWidth:F

    .line 2836
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    .line 2838
    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->ARROW_PADDING:F

    iput v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    .line 2846
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointX:F

    .line 2847
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointY:F

    .line 2848
    iget v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mWidth:F

    add-float v5, v2, v4

    iput v5, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointX:F

    .line 2849
    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointY:F

    .line 2850
    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterX:F

    .line 2851
    iput v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterY:F

    .line 2859
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    .line 2861
    const/4 v0, 0x0

    .line 2862
    .local v0, "morphingStartValue":F
    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 2863
    .local v1, "morphingEndValue":F
    iput v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    .line 2871
    const/4 v2, 0x2

    new-array v4, v2, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v1, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    .line 2872
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IndicatorImageView : initArrow : mMorphingAnimationToDown = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :cond_0
    iget-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x10c0006

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2875
    iget-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x12c

    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2876
    iget-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2877
    iget-object v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2879
    iget v4, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mHeight:F

    iget v7, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPaddingValue:F

    mul-float/2addr v7, v3

    sub-float/2addr v4, v7

    .line 2880
    .end local v0    # "morphingStartValue":F
    .local v4, "morphingStartValue":F
    const/4 v0, 0x0

    .line 2887
    .end local v1    # "morphingEndValue":F
    .local v0, "morphingEndValue":F
    new-array v1, v2, [F

    aput v4, v1, v5

    aput v0, v1, v6

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    .line 2889
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndicatorImageView : initArrow : mMorphingAnimationToUp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :cond_1
    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2892
    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2893
    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2895
    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2896
    return-void
.end method

.method private blacklist printAnimationInfo(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2824
    if-eqz p1, :cond_1

    .line 2825
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "printAnimationInfo : animation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2827
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "printAnimationInfo : this animation => mMorphingAnimationToDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2828
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2829
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "printAnimationInfo : this animation => mMorphingAnimationToUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist printState([I)V
    .locals 7
    .param p1, "drawableState"    # [I

    .line 2765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2766
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 2767
    .local v3, "state":I
    if-nez v3, :cond_0

    .line 2768
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawableStateChanged() state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    goto :goto_1

    .line 2771
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2766
    .end local v3    # "state":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2774
    :cond_1
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawableStateChanged() gr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .locals 0

    .line 2761
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2762
    return-void
.end method

.method public whitelist onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .line 2751
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2752
    .local v0, "result":[I
    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2753
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetGROUP_EXPANDED_STATE_SET()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->mergeDrawableStates([I[I)[I

    .line 2755
    :cond_0
    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2907
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmIndicatorAnimationType(Landroid/widget/SemExpandableListView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2909
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 2910
    invoke-direct {p0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->initArrow()V

    .line 2913
    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_6

    .line 2914
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2915
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mStartPointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2925
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2931
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    const-string v1, "IndicatorImageView : onDraw : group("

    if-eqz v0, :cond_2

    .line 2932
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") collapse !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    goto :goto_0

    .line 2936
    :cond_2
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") expand !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    :cond_3
    iget v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mIndicatorArrowHeight:F

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    .line 2941
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mCenterY:F

    iget v3, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimatedValue:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2944
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointX:F

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mEndPointY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2945
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGroupIndicatorPaint(Landroid/widget/SemExpandableListView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 2949
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2953
    :cond_6
    :goto_1
    return-void
.end method

.method blacklist setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V
    .locals 1
    .param p1, "position"    # Landroid/widget/SemExpandableListPosition;

    .line 2745
    iget v0, p1, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    .line 2746
    iget v0, p1, Landroid/widget/SemExpandableListPosition;->childPos:I

    iput v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->childPos:I

    .line 2747
    return-void
.end method

.method public blacklist startIndicatorMorphAimation()V
    .locals 3

    .line 2956
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 2957
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2959
    :cond_1
    return-void

    .line 2962
    :cond_2
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2963
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmConnector(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v0

    iget v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    const-string v1, "IndicatorImageView : startIndicatorMorphAimation : group("

    if-eqz v0, :cond_4

    .line 2964
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2965
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") collapse !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndicatorImageView : startIndicatorMorphAimation : start morphingAnimation to UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    :cond_3
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToUp:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    .line 2969
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2972
    :cond_4
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetDEBUGGABLE_LOW()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2973
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") expand !!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndicatorImageView : startIndicatorMorphAimation : start morphingAnimation to DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    :cond_5
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView;->mMorphingAnimationToDown:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    .line 2977
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2981
    :cond_6
    :goto_0
    return-void
.end method
