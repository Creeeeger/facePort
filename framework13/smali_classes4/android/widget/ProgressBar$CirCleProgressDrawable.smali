.class Landroid/widget/ProgressBar$CirCleProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CirCleProgressDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;
    }
.end annotation


# instance fields
.field private final blacklist VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/widget/ProgressBar$CirCleProgressDrawable;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAlpha:I

.field private blacklist mArcRect:Landroid/graphics/RectF;

.field blacklist mColor:I

.field blacklist mColorStateList:Landroid/content/res/ColorStateList;

.field private blacklist mIsBackground:Z

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field public blacklist mProgress:I

.field private final blacklist mState:Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;

.field final synthetic blacklist this$0:Landroid/widget/ProgressBar;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ProgressBar;ZLandroid/content/res/ColorStateList;)V
    .locals 2
    .param p2, "isBackground"    # Z
    .param p3, "color"    # Landroid/content/res/ColorStateList;

    .line 2843
    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2831
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2834
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mAlpha:I

    .line 2838
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    .line 2841
    new-instance v0, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;-><init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState-IA;)V

    iput-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mState:Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;

    .line 2881
    new-instance v0, Landroid/widget/ProgressBar$CirCleProgressDrawable$1;

    const-string/jumbo v1, "visual_progress"

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$CirCleProgressDrawable$1;-><init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;

    .line 2844
    iput-boolean p2, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mIsBackground:Z

    .line 2845
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2846
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2847
    iput-object p3, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2848
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    .line 2849
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2850
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mProgress:I

    .line 2851
    return-void
.end method

.method private blacklist modulateAlpha(II)I
    .locals 2
    .param p1, "paintAlpha"    # I
    .param p2, "alpha"    # I

    .line 2872
    ushr-int/lit8 v0, p2, 0x7

    add-int/2addr v0, p2

    .line 2873
    .local v0, "scale":I
    mul-int v1, p1, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2855
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v2}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2856
    iget-object v1, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 2857
    .local v1, "prevAlpha":I
    iget-object v2, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mAlpha:I

    invoke-direct {v0, v1, v3}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->modulateAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2858
    iget-object v2, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v5}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget-object v6, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v7}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v8}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    sub-float/2addr v7, v8

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2859
    iget-object v2, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v2}, Landroid/widget/ProgressBar;->-$$Nest$fgetmMax(Landroid/widget/ProgressBar;)I

    move-result v2

    iget-object v3, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/widget/ProgressBar;->-$$Nest$fgetmMin(Landroid/widget/ProgressBar;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2860
    .local v2, "range":I
    if-lez v2, :cond_0

    iget v3, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mProgress:I

    iget-object v4, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v4}, Landroid/widget/ProgressBar;->-$$Nest$fgetmMin(Landroid/widget/ProgressBar;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2861
    .local v3, "scale":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2862
    iget-boolean v4, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mIsBackground:Z

    if-eqz v4, :cond_1

    .line 2863
    iget-object v6, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 2865
    :cond_1
    iget-object v12, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    const/high16 v13, 0x43870000    # 270.0f

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v14, v3, v4

    const/4 v15, 0x0

    iget-object v4, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2867
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2868
    iget-object v4, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2869
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 2963
    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mState:Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .locals 3

    .line 2924
    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2925
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2926
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 2927
    .local v1, "alpha":I
    if-nez v1, :cond_0

    .line 2928
    const/4 v2, -0x2

    return v2

    .line 2930
    :cond_0
    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    .line 2931
    const/4 v2, -0x1

    return v2

    .line 2934
    .end local v1    # "alpha":I
    :cond_1
    const/4 v1, -0x3

    return v1
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 2878
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    .line 2950
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 2951
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 2952
    .local v1, "color":I
    iget v2, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    .line 2953
    iput v1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    .line 2954
    iget-object v2, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2955
    invoke-virtual {p0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    .line 2957
    :cond_0
    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 2912
    iput p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mAlpha:I

    .line 2913
    invoke-virtual {p0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    .line 2914
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 2918
    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2919
    invoke-virtual {p0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    .line 2920
    return-void
.end method

.method public blacklist setProgress(IZ)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .line 2896
    if-eqz p2, :cond_1

    .line 2897
    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2898
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_0

    .line 2899
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 2901
    :cond_0
    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2902
    invoke-static {}, Landroid/widget/ProgressBar;->-$$Nest$sfgetPROGRESS_ANIM_INTERPOLATOR()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2903
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2904
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 2905
    :cond_1
    iput p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mProgress:I

    .line 2906
    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 2908
    :goto_0
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 2939
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2940
    if-eqz p1, :cond_0

    .line 2941
    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2942
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    .line 2943
    iget-object v1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2944
    invoke-virtual {p0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    .line 2946
    :cond_0
    return-void
.end method
